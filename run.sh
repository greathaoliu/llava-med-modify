python -m llava.serve.controller --host 0.0.0.0 --port 10000 &
python -m llava.serve.model_worker --host 0.0.0.0 --controller http://localhost:10000 --port 40000 --worker http://localhost:40000 --model-path ./output/LLaVA-7b-v0/ --multi-modal --num-gpus 4
python -m llava.serve.model_worker --host 0.0.0.0 --controller http://localhost:10000 --port 40000 --worker http://localhost:40000 --model-path ./output/LLaVA-7b-v0/ --multi-modal
python -m llava.serve.gradio_web_server --controller http://localhost:10000 --host 192.168.99.21 --port 17860