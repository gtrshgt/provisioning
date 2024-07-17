#!/bin/bash
# This file will be sourced in init.sh
# Namespace functions with provisioning_

# https://raw.githubusercontent.com/ai-dock/stable-diffusion-webui/main/config/provisioning/default.sh

### Edit the following arrays to suit your workflow - values must be quoted and separated by newlines or spaces.

DISK_GB_REQUIRED=30

MAMBA_PACKAGES=(
    #"package1"
    #"package2=version"
  )

PIP_PACKAGES=(
    "bitsandbytes==0.41.2.post2"
  )

EXTENSIONS=(
    "https://github.com/mcmonkeyprojects/sd-dynamic-thresholding"
    #-"https://github.com/Mikubill/sd-webui-controlnet"
    "https://github.com/pkuliyi2015/multidiffusion-upscaler-for-automatic1111"
    #"https://github.com/fkunn1326/openpose-editor"
    #"https://github.com/hnmr293/posex"
    "https://github.com/d8ahazard/sd_dreambooth_extension"
    #"https://github.com/deforum-art/sd-webui-deforum"
    "https://github.com/adieyal/sd-dynamic-prompts"
    #"https://github.com/ototadana/sd-face-editor"
    "https://github.com/AlUlkesh/stable-diffusion-webui-images-browser"
    #"https://github.com/zanllp/sd-webui-infinite-image-browsing"
    #"https://github.com/hako-mikan/sd-webui-regional-prompter"
    "https://github.com/Coyote-A/ultimate-upscale-for-automatic1111"
    #"https://github.com/Gourieff/sd-webui-reactor"
    "https://github.com/Haoming02/sd-webui-vectorscope-cc"
    "https://github.com/pharmapsychotic/clip-interrogator-ext"
    "https://github.com/Physton/sd-webui-prompt-all-in-one"
    "https://github.com/KohakuBlueleaf/z-a1111-sd-webui-dtg" #DanTagGen to upsample prompts
    "https://github.com/DominikDoom/a1111-sd-webui-tagcomplete"
    "https://github.com/hnmr293/sd-webui-llul"
)

CHECKPOINT_MODELS=(
    "https://civitai.com/api/download/models/511677?token=${TOKEN}" # Everclear V3
    #"https://civitai.com/api/download/models/629179?token=${TOKEN}" # boleromix
    #"https://civitai.com/models/476745?modelVersionId=604842?token=${TOKEN}" #  realistic Pony, not working?
    #https://civitai.com/api/download/models/637965 # GoodFit-Pony
    #"https://civitai.com/api/download/models/619549?token=${TOKEN}" # DucHaiten Pony-Real, checking
    #"https://civitai.com/api/download/models/531417?token=${TOKEN}" # DucHaiten Pony-XL (no-score)
    #-"https://civitai.com/api/download/models/441236?token=${TOKEN}" # 7th anime XL-Pony A
    #"https://civitai.com/models/413979?modelVersionId=526408?token=${TOKEN}" #Raemora XL 
    #-"https://civitai.com/api/download/models/465251?token=${TOKEN}" # PonyRealism
    "https://civitai.com/api/download/models/534642?token=${TOKEN}" # PonyRealism v2.1 VAE
    #-"https://civitai.com/models/365041?modelVersionId=515456?token=${TOKEN}" # RealPony real_anime, jap
    ##"https://civitai.com/api/download/models/399640?token=${TOKEN}" # EverclearPNYbyZovya
    ##########"https://civitai.com/api/download/models/324524?token=${TOKEN}" # AutismMixXL_confetti
    #
    "https://civitai.com/api/download/models/303498?token=${TOKEN}" # softfantasy_realmagic
    #"https://civitai.com/api/download/models/228559?token=${TOKEN}" # Omnigen
    ###"https://civitai.com/api/download/models/490639?token=${TOKEN}" # iNiverseMixXL
    #"https://civitai.com/api/download/models/489217?token=${TOKEN}" # epiCRealism XL
)

LORA_MODELS=(
    ## PonyXL
    "https://civitai.com/api/download/models/520909?token=${TOKEN}" # bodyTypeSlider
    "https://civitai.com/api/download/models/182404?token=${TOKEN}" # LabiaplastyXL 
    #-"https://civitai.com/api/download/models/396822?token=${TOKEN}" # PonyXL_SmallRaphtalia
    #-"https://civitai.com/api/download/models/416403?token=${TOKEN}" # AobaSuzukazeXL
    "https://civitai.com/api/download/models/413128?token=${TOKEN}" # footOnHead
    #-"https://civitai.com/api/download/models/437203?token=${TOKEN}" # Eromanga
    #-"https://civitai.com/api/download/models/436219?token=${TOKEN}" # IncaseStyle
    #-"https://civitai.com/api/download/models/416689?token=${TOKEN}" # uncensoredPonyXL
    "https://civitai.com/api/download/models/448977?token=${TOKEN}" # ageSliderPonyXL
    ## SDXL
    "https://civitai.com/api/download/models/288407?token=${TOKEN}" # bodyWriting
    "https://civitai.com/api/download/models/240274?token=${TOKEN}" # zoomXL
    "https://civitai.com/api/download/models/273996?token=${TOKEN}" # DPO_followPrompt
    #-"https://civitai.com/api/download/models/249521?token=${TOKEN}" # textSDXL
    "https://civitai.com/api/download/models/135867?token=${TOKEN}" # detailTweakerXL   
    #-"https://civitai.com/api/download/models/127928?token=${TOKEN}" # finenude 
    #-"https://civitai.com/api/download/models/445135?token=${TOKEN}" # flatChested
    #-"https://civitai.com/api/download/models/247083?token=${TOKEN}" # slimwomanXL
    "https://civitai.com/api/download/models/131364?type=Model&format=SafeTensor&token=${TOKEN}" # AhegaoXL
    #-"https://civitai.com/api/download/models/244808?type=Model&format=SafeTensor&token=${TOKEN}" # AllDisneyPrincessXL
    "https://civitai.com/api/download/models/394127?token=${TOKEN}" # realCumXL
    "https://civitai.com/api/download/models/360315?token=${TOKEN}" # ringGagXL
    "https://civitai.com/api/download/models/150991?token=${TOKEN}" # bondageXL
    #-"https://civitai.com/api/download/models/142000?token=${TOKEN}" # schoolBuilding
    ## SD1.5
    #----"https://civitai.com/api/download/models/123732" # zoomSlider
    #-"https://civitai.com/api/download/models/155980?type=Model&format=SafeTensor" # swordswallowing
    #-"https://civitai.com/api/download/models/43171" # tiedtobed
    #-"https://civitai.com/api/download/models/118945?token=${TOKEN}" # epicRealHelper
)

EMBEDDINGS=(
    "https://civitai.com/api/download/models/106020"  # Detail ++ OverallDetail
    #"https://civitai.com/api/download/models/105067" # detail++ SkinAndHair
    #"https://civitai.com/api/download/models/482268?type=Model&format=PickleTensor" # Pony PDXL , PhotoReal
    #"https://civitai.com/api/download/models/482268?type=Negative&format=Other" # Pony PDXL Negative , PhotoReal
    "https://civitai.com/api/download/models/95256" # EpiCRealism - embedding
    "https://civitai.com/api/download/models/95263" # EpiCRealism Negative - embedding
)

VAE_MODELS=(
    #"https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors"
    #"https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors"
    #"https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
)

ESRGAN_MODELS=(
    "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    #"https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    #"https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_depth-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_hed-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_mlsd-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_normal-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_scribble-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_seg-fp16.safetensors"
    #-"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_canny-fp16.safetensors"
    #-"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_color-fp16.safetensors"
    #-"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_depth-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_keypose-fp16.safetensors"
    #-"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_sketch-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_style-fp16.safetensors"
)


### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    source /opt/ai-dock/etc/environment.sh
    DISK_GB_AVAILABLE=$(($(df --output=avail -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_USED=$(($(df --output=used -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_ALLOCATED=$(($DISK_GB_AVAILABLE + $DISK_GB_USED))
    provisioning_print_header
    provisioning_get_mamba_packages
    provisioning_get_pip_packages
    provisioning_get_extensions
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/ckpt" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/embeddings" \
        "${EMBEDDINGS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/controlnet" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/vae" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/esrgan" \
        "${ESRGAN_MODELS[@]}"

    PLATFORM_FLAGS=""
    if [[ $XPU_TARGET = "CPU" ]]; then
        PLATFORM_FLAGS="--use-cpu all --skip-torch-cuda-test --no-half"
    fi
    PROVISIONING_FLAGS="--skip-python-version-check --no-download-sd-model --do-not-download-clip --port 11404 --exit"
    FLAGS_COMBINED="${PLATFORM_FLAGS} $(cat /etc/a1111_webui_flags.conf) ${PROVISIONING_FLAGS}"

    # Start and exit because webui will probably require a restart
    cd /opt/stable-diffusion-webui && \
    micromamba run -n webui -e LD_PRELOAD=libtcmalloc.so python launch.py \
        ${FLAGS_COMBINED}
    provisioning_print_end
}

function provisioning_get_mamba_packages() {
    if [[ -n $MAMBA_PACKAGES ]]; then
        $MAMBA_INSTALL -n webui ${MAMBA_PACKAGES[@]}
    fi
}

function provisioning_get_pip_packages() {
    if [[ -n $PIP_PACKAGES ]]; then
        micromamba run -n webui $PIP_INSTALL ${PIP_PACKAGES[@]}
    fi
}

function provisioning_get_extensions() {
    for repo in "${EXTENSIONS[@]}"; do
        dir="${repo##*/}"
        path="/opt/stable-diffusion-webui/extensions/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} == "true" ]]; then
                printf "Updating extension: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                    micromamba -n webui run ${PIP_INSTALL} -r "$requirements"
                fi
            fi
        else
            printf "Downloading extension: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
            if [[ -e $requirements ]]; then
                micromamba -n webui run ${PIP_INSTALL} -r "${requirements}"
            fi
        fi
    done
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    dir="$1"
    mkdir -p "$dir"
    shift
    if [[ $DISK_GB_ALLOCATED -ge $DISK_GB_REQUIRED ]]; then
        arr=("$@")
    else
        printf "WARNING: Low disk space allocation - Only the first model will be downloaded!\n"
        arr=("$1")
    fi

    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

# Download from $1 URL to $2 file path
function provisioning_download() {
    wget -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
}

provisioning_start
