#!/usr/bin/env python

import torch
import argparse
from transformers import AutoTokenizer, AutoModelForSeq2SeqLM


def translate(model, tokenizer, text):
    encoded = tokenizer(text, return_tensors="pt").input_ids
    generated = model.generate(encoded)

    return tokenizer.decode(generated[0])    

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
 