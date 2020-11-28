#!/usr/bin/env python

import torch
import argparse
from transformers import AutoTokenizer, AutoModelForSeq2SeqLM, T5ForConditionalGeneration


def translate(model, tokenizer, text):
    encoded = tokenizer(text, return_tensors="pt").input_ids
    generated = model.generate(encoded)

    decoded = tokenizer.decode(generated[0])

    if type(model) is T5ForConditionalGeneration:
        return decoded.replace("<unk>", "~")
    return decoded


def main(args):
    tokenizer = AutoTokenizer.from_pretrained(args.model_name_or_path)
    model = AutoModelForSeq2SeqLM.from_pretrained(args.model_name_or_path)

    while True:
        text = input("Type a sentence to translate to FOL: ")

        print(translate(model, tokenizer, text))


if __name__ == "__main__":
    parser = argparse.ArgumentParser()

    parser.add_argument(
        "--model_name_or_path",
        type=str,
        help="The name or path of the model to be used.",
    )

    args = parser.parse_args()

    main(args)
