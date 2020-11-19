# Add parent directory to python path to access lightning_base.py
export PYTHONPATH="../":"${PYTHONPATH}"

python finetune.py \
--data_dir=./train_data \
--learning_rate=3e-5 \
--train_batch_size=4 \
--eval_batch_size=4 \
--output_dir=./output \
--max_source_length=512 \
--val_check_interval=0.1 --n_val=200 \
--do_train --do_predict \
--gpus=0 \
 "$@"
