#!/bin/sh
# Run a basic annotation test on GPU. Execute to test your TurkuNLP installation
echo 'The quick brown fox jumped over the lazy dog.' | python3 full_pipeline_stream.py --conf models_en_ewt/pipelines.yaml parse_plaintext
