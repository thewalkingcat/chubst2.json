# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# Could not resolve unknown_registry node CheckpointLoaderSimple (no aux_id provided) - skipped

# download models into comfyui
RUN comfy model download --url https://civitai.com/api/download/models/1896532?token=7c025e410b9fe1d41ae385a2ea49ef31 --relative-path models/checkpoints --filename JANKUTrainedNoobaiRouwei_v50.safetensors

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
