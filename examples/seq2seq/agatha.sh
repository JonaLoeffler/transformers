./run_eval.py out-nnns-bart-base/best_tfmr/ agatha/agatha.source agatha/bart.target --reference_path=agatha/agatha.target --score_path=agatha/bart.json --task=translation;
./run_eval.py out-nnns-t5-base/best_tfmr/ agatha/agatha.source agatha/t5.target --reference_path=agatha/agatha.target --score_path=agatha/t5.json --task=translation;
./run_eval.py out-nnns-marian-en-de/best_tfmr/ agatha/agatha.source agatha/marian.target --reference_path=agatha/agatha.target --score_path=agatha/marian.json --task=translation;
./run_eval.py out-nnns-no-var-bart-base/best_tfmr/ agatha/agatha.source agatha/bart-no-var.target --reference_path=agatha/agatha.target --score_path=agatha/bart-no-var.json --task=translation;
./run_eval.py out-nnns-no-var-t5-base/best_tfmr/ agatha/agatha.source agatha/t5-no-var.target --reference_path=agatha/agatha.target --score_path=agatha/t5-no-var.json --task=translation;
./run_eval.py out-nnns-no-var-marian-en-de/best_tfmr/ agatha/agatha.source agatha/marian-no-var.target --reference_path=agatha/agatha.target --score_path=agatha/marian-no-var.json --task=translation;

./run_eval.py out-nnns-mtl84-bart-base/best_tfmr/ agatha/agatha.source agatha/bart-mtl84.target --reference_path=agatha/agatha.target --score_path=agatha/bart-mtl84.json --task=translation;
./run_eval.py out-nnns-mtl84-t5-base/best_tfmr/ agatha/agatha.source agatha/t5-mtl84.target --reference_path=agatha/agatha.target --score_path=agatha/t5-mtl84.json --task=translation;
./run_eval.py out-nnns-mtl84-marian-en-de/best_tfmr/ agatha/agatha.source agatha/marian-mtl84.target --reference_path=agatha/agatha.target --score_path=agatha/marian-mtl84.json --task=translation;
./run_eval.py out-nnns-mtl84-no-var-bart-base/best_tfmr/ agatha/agatha.source agatha/bart-mtl84-no-var.target --reference_path=agatha/agatha.target --score_path=agatha/bart-mtl84-no-var.json --task=translation;
./run_eval.py out-nnns-mtl84-no-var-t5-base/best_tfmr/ agatha/agatha.source agatha/t5-mtl84-no-var.target --reference_path=agatha/agatha.target --score_path=agatha/t5-mtl84-no-var.json --task=translation;
./run_eval.py out-nnns-mtl84-no-var-marian-en-de/best_tfmr/ agatha/agatha.source agatha/marian-mtl84-no-var.target --reference_path=agatha/agatha.target --score_path=agatha/marian-mtl84-no-var.json --task=translation;