#!/usr/bin/env python

import torch
import argparse
from transformers import AutoTokenizer, AutoModelForSeq2SeqLM, T5ForConditionalGeneration


def translate(model, tokenizer, text):
    encoded = tokenizer(text, return_tensors="pt").input_ids
    generated = model.generate(encoded)

    decoded = tokenizer.decode(generated[0]).replace("<pad>", "").replace("</s>", "").replace("<s>", "")

    if type(model) is T5ForConditionalGeneration:
        return decoded.replace("<unk>", "~")
    return decoded


def interactive(args):
    tokenizer = AutoTokenizer.from_pretrained(args.model_name_or_path)
    model = AutoModelForSeq2SeqLM.from_pretrained(args.model_name_or_path)

    while True:
        text = input("Type a sentence to translate to FOL: ")

        print(translate(model, tokenizer, text))


def batch(args):
    import sys
    import pandas as pd
    from tqdm import tqdm

    tokenizer = AutoTokenizer.from_pretrained(args.model_name_or_path)
    model = AutoModelForSeq2SeqLM.from_pretrained(args.model_name_or_path)

    df = pd.read_csv(sys.stdin, sep="\t", names=["text", "formula"])

    tqdm.pandas()

    df["formula"] = df["text"].progress_apply(lambda text: translate(model, tokenizer, text))

    df.to_csv(sys.stdout, sep="\t", index=False, header=False)


def arguments():
    parser = argparse.ArgumentParser()

    parser.add_argument(
        "--model_name_or_path",
        type=str,
        help="The name or path of the model to be used.",
    )

    parser.add_argument(
        "-i",
        "--interactive",
        action="store_true",
        help="Whether to start an interactive session",
    )

    return parser.parse_args()


if __name__ == "__main__":
    args = arguments()

    if args.interactive:
        interactive(args)
    else:
        batch(args)
