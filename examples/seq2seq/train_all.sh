#!/bin/bash

./finetune.py --learning_rate=3e-5 --gpus 0 --do_train --do_predict --n_val 1000 --val_check_interval 0.1 --logger_name=wandb --task=translation --early_stopping_patience 1 --data_dir=./ttf-wnws --output_dir=./out-wnws-marian-en-de/ --model_name_or_path=Helsinki-NLP/opus-mt-en-de;
./finetune.py --learning_rate=3e-5 --gpus 0 --do_train --do_predict --n_val 1000 --val_check_interval 0.1 --logger_name=wandb --task=translation --early_stopping_patience 1 --data_dir=./ttf-nnws --output_dir=./out-nnws-marian-en-de/ --model_name_or_path=Helsinki-NLP/opus-mt-en-de;
./finetune.py --learning_rate=3e-5 --gpus 0 --do_train --do_predict --n_val 1000 --val_check_interval 0.1 --logger_name=wandb --task=translation --early_stopping_patience 1 --data_dir=./ttf-nnns --output_dir=./out-nnns-marian-en-de/ --model_name_or_path=Helsinki-NLP/opus-mt-en-de;

./finetune.py --learning_rate=3e-5 --gpus 0 --do_train --do_predict --n_val 1000 --val_check_interval 0.1 --logger_name=wandb --task=translation --early_stopping_patience 1 --data_dir=./ttf-wnws --output_dir=./out-wnws-bart-base/ --model_name_or_path=facebook/bart-base;
./finetune.py --learning_rate=3e-5 --gpus 0 --do_train --do_predict --n_val 1000 --val_check_interval 0.1 --logger_name=wandb --task=translation --early_stopping_patience 1 --data_dir=./ttf-nnws --output_dir=./out-nnws-bart-base/ --model_name_or_path=facebook/bart-base;
./finetune.py --learning_rate=3e-5 --gpus 0 --do_train --do_predict --n_val 1000 --val_check_interval 0.1 --logger_name=wandb --task=translation --early_stopping_patience 1 --data_dir=./ttf-nnns --output_dir=./out-nnns-bart-base/ --model_name_or_path=facebook/bart-base;

./finetune.py --learning_rate=3e-5 --gpus 0 --do_train --do_predict --n_val 1000 --val_check_interval 0.1 --logger_name=wandb --task=translation --early_stopping_patience 1 --data_dir=./ttf-wnws --output_dir=./out-wnws-t5-base/ --model_name_or_path=t5-base;
./finetune.py --learning_rate=3e-5 --gpus 0 --do_train --do_predict --n_val 1000 --val_check_interval 0.1 --logger_name=wandb --task=translation --early_stopping_patience 1 --data_dir=./ttf-nnws --output_dir=./out-nnws-t5-base/ --model_name_or_path=t5-base;
./finetune.py --learning_rate=3e-5 --gpus 0 --do_train --do_predict --n_val 1000 --val_check_interval 0.1 --logger_name=wandb --task=translation --early_stopping_patience 1 --data_dir=./ttf-nnns --output_dir=./out-nnns-t5-base/ --model_name_or_path=t5-base;