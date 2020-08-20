#!/bin/sh
# Run a basic annotation test on CPU. Execute to test your TurkuNLP installation
echo 'The quick brown fox jumped over the lazy dog.' | python3 full_pipeline_stream.py --gpu -1 --conf models_en_ewt/pipelines.yaml parse_plaintext
