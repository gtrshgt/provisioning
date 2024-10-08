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
    #"https://github.com/mcmonkeyprojects/sd-dynamic-thresholding"
    #-"https://github.com/Mikubill/sd-webui-controlnet"
    #+"https://github.com/pkuliyi2015/multidiffusion-upscaler-for-automatic1111"
    #+"https://github.com/Coyote-A/ultimate-upscale-for-automatic1111"
    #"https://github.com/fkunn1326/openpose-editor"
    #"https://github.com/hnmr293/posex"
    #"https://github.com/d8ahazard/sd_dreambooth_extension"
    #"https://github.com/deforum-art/sd-webui-deforum"
    "https://github.com/adieyal/sd-dynamic-prompts"
    #"https://github.com/ototadana/sd-face-editor"
    "https://github.com/AlUlkesh/stable-diffusion-webui-images-browser"
    #"https://github.com/zanllp/sd-webui-infinite-image-browsing"
    #"https://github.com/hako-mikan/sd-webui-regional-prompter"
    #"https://github.com/Gourieff/sd-webui-reactor"
    #"https://github.com/Haoming02/sd-webui-vectorscope-cc"
    "https://github.com/pharmapsychotic/clip-interrogator-ext"
    #"https://github.com/Physton/sd-webui-prompt-all-in-one"
    #"https://github.com/KohakuBlueleaf/z-a1111-sd-webui-dtg" #DanTagGen to upsample prompts
    "https://github.com/DominikDoom/a1111-sd-webui-tagcomplete"
    #-"https://github.com/captainzero93/sd-webui-bubble-prompter.git" 
    #"https://github.com/hnmr293/sd-webui-llul" # local latent upscale
    #_"https://github.com/Extraltodeus/test_my_prompt" # iterates leave one word out 
    #-"https://github.com/THUDM/ImageReward" # ImageReward Scorer
)

# has to be api/download, and models/<modelVersionId> !
CHECKPOINT_MODELS=(
    #"https://civitai.com/api/download/models/699279?type=Model&format=SafeTensor&size=pruned&fp=fp8&token=${TOKEN}" # FLUX Schnell fp8
    #
    "https://civitai.com/api/download/models/638137?type=Model&format=SafeTensor&size=full&fp=fp16&token=${TOKEN}" # GODDESS of Realism Pony_v1.0
    #-"https://civitai.com/api/download/models/578496?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${TOKEN}" # 2DN-Pony
    #"https://civitai.com/api/download/models/534642?token=${TOKEN}" # PonyRealism v2.1 VAE
    #"https://civitai.com/api/download/models/511677?token=${TOKEN}" # Everclear V3
    "https://civitai.com/api/download/models/706559?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${TOKEN}" # WAI-REAL_CN v10.0
    #"https://civitai.com/api/download/models/717529?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${TOKEN}" # WAI-REALMIX v9.0 
    #"https://civitai.com/api/download/models/714540?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${TOKEN}" # WAI-CUTE v6.0
    #"https://civitai.com/api/download/models/693545?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${TOKEN}" # Sevenof9_pony_real_mix Smart_Evolution
    #"https://civitai.com/api/download/models/680915?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${TOKEN}" # CyberRealistic Pony , V6.1
    #"https://huggingface.co/cyberdelia/CyberRealisticPony/resolve/main/CyberRealisticPony_V5.safetensors?download=true" # V5 backup (deleted from civit)
    #"https://civitai.com/api/download/models/629179?token=${TOKEN}" # boleromix
    #"https://civitai.com/api/download/models/674533?type=Model&format=SafeTensor&size=pruned&fp=fp16?token=${TOKEN}" #  Godiva
    #https://civitai.com/api/download/models/637965 # GoodFit-Pony
    #"https://civitai.com/api/download/models/619549?token=${TOKEN}" # DucHaiten Pony-Real, checking
    #"https://civitai.com/api/download/models/531417?token=${TOKEN}" # DucHaiten Pony-XL (no-score)
    #-"https://civitai.com/api/download/models/441236?token=${TOKEN}" # 7th anime XL-Pony A
    #"https://civitai.com/models/413979?modelVersionId=526408?token=${TOKEN}" #Raemora XL 
    #-"https://civitai.com/api/download/models/465251?token=${TOKEN}" # PonyRealism
    #"https://civitai.com/api/download/models/515456?type=Model&format=SafeTensor&size=full&fp=fp16&token=${TOKEN}" # RealPony real_anime, jap
    ##"https://civitai.com/api/download/models/399640?token=${TOKEN}" # EverclearPNYbyZovya
    ##########"https://civitai.com/api/download/models/324524?token=${TOKEN}" # AutismMixXL_confetti
    #
    #"https://civitai.com/api/download/models/450146?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${TOKEN}" # PD for Anime
    #
    ###"https://civitai.com/api/download/models/471120?token=${TOKEN}" # Juggernaut XL RunDiffiusionHyper, epiCRealism is better
    #"https://civitai.com/api/download/models/293240?type=Model&format=SafeTensor&size=pruned&fp=fp16?token=${TOKEN}" # Realism Engine SDXL
    #"https://civitai.com/api/download/models/541882?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=${TOKEN}" # Copax TimeLessXL, Nice sets w cloths, no pussy at all
    ###"https://civitai.com/api/download/models/646523?token=${TOKEN}" # epiCRealism XL Kiss , Perfect texture, ugly pussy ->softfantasy 
    "https://civitai.com/api/download/models/303498?token=${TOKEN}" # softfantasy_realmagic YES
    #"https://civitai.com/api/download/models/450105?type=Model&format=SafeTensor&size=full&fp=fp16&token=${TOKEN}" # STOIQO AfroditeXL 
    #"https://civitai.com/api/download/models/253250?type=Model&format=SafeTensor&size=full&fp=fp16&token=${TOKEN}" # SDXXXL V3, goodl for single command, bad bodies on instructions
    #"https://civitai.com/api/download/models/363977?type=Model&format=SafeTensor&size=full&fp=fp16&token=${TOKEN}" # OnlyForNsfw118 v2.0
    #"https://civitai.com/api/download/models/228559?token=${TOKEN}" # Omnigen
    ###"https://civitai.com/api/download/models/490639?token=${TOKEN}" # iNiverseMixXL
    #"https://civitai.com/api/download/models/324958?type=Model&format=SafeTensor&size=full&fp=fp16&token=${TOKEN}" # Pyro's NSFW SDXL
    "https://civitai.com/api/download/models/887555?type=Model&format=SafeTensor&size=full&fp=fp16&token=${TOKEN}" # NatViS: Natural Vision V2
)

LORA_MODELS=(
    ## Flux
    
    ## PonyXL
    ##"https://civitai.com/api/download/models/520909?token=${TOKEN}" # bodyTypeSlider
    #"https://civitai.com/api/download/models/565308?type=Model&format=SafeTensor&token=${TOKEN}" # Undressing SD1/XL/PONY. 'Undressing'
    #"https://civitai.com/api/download/models/669226?type=Model&format=SafeTensor&token=${TOKEN}" # 'stacking ass pussy 2girls' # Pussy sandwich for Pony
    #"https://civitai.com/api/download/models/264789?type=Model&format=SafeTensor&token=${TOKEN}" # 'legsbehindhead', ugly
    #"https://civitai.com/api/download/models/651844?type=Model&format=SafeTensor&token=${TOKEN}" # (O.D.O.R) Feet Pony, 'feet' 
    #+"https://civitai.com/api/download/models/657010?type=Model&format=SafeTensor&token=${TOKEN}" # 'cooperative fellatio, penis, group sex'
    #"https://civitai.com/api/download/models/169536?type=Model&format=SafeTensor&token=${TOKEN}" # TWbabeSDXL 'TWbabeXL01'
    #"https://civitai.com/api/download/models/395560?type=Model&format=SafeTensor&token=${TOKEN}" # 'pleasure-face, mild-pleasure/medium-pleasure/intense-pleasure, eyes open/eyes closed'
    #+"https://civitai.com/api/download/models/375618?type=Model&format=SafeTensor&token=${TOKEN}" # 'facial expression, aroused, pain, crying, scared, flirting, suprised, excited'
    #+"https://civitai.com/api/download/models/486194?type=Model&format=SafeTensor&token=${TOKEN}" # 'crying style'
    #"https://civitai.com/api/download/models/506561?type=Model&format=SafeTensor&token=${TOKEN}" # 'broken expression'
    #"https://civitai.com/api/download/models/314787?type=Model&format=SafeTensor&token=${TOKEN}" # Torogao_Ahegao_slider, SDXL version
    #"https://civitai.com/api/download/models/338805?type=Model&format=SafeTensor&token=${TOKEN}" # Torogao_Ahegao_slider, pony version
    #"https://civitai.com/api/download/models/429014?type=Model&format=SafeTensor&token=${TOKEN}" # 'with a pained grimace, grimacing expression', ugly
    #"https://civitai.com/api/download/models/681264?type=Model&format=SafeTensor&token=${TOKEN}" # Magic Wand Vibrator 'Magic Wand', ugly
    ##"https://civitai.com/api/download/models/440265?type=Model&format=SafeTensor&token=${TOKEN}"# 'Wchastity metcage plascage cagecage'
    #"https://civitai.com/api/download/models/182404?token=${TOKEN}" # LabiaplastyXL 
    ##"https://civitai.com/api/download/models/232190?type=Model&format=SafeTensor&token=${TOKEN}" # Rear Pussy XL, bad!
    #-"https://civitai.com/api/download/models/396822?token=${TOKEN}" # PonyXL_SmallRaphtalia
    #-"https://civitai.com/api/download/models/416403?token=${TOKEN}" # AobaSuzukazeXL
    ##"https://civitai.com/api/download/models/413128?token=${TOKEN}" # footOnHead
    #-"https://civitai.com/api/download/models/437203?token=${TOKEN}" # Eromanga
    #-"https://civitai.com/api/download/models/436219?token=${TOKEN}" # IncaseStyle
    #-"https://civitai.com/api/download/models/416689?token=${TOKEN}" # uncensoredPonyXL
    "https://civitai.com/api/download/models/448977?token=${TOKEN}" # ageSliderPonyXL
    ## SDXL
    "https://civitai.com/api/download/models/471794?type=Model&format=SafeTensor?token=${TOKEN}" # "perfect hand"
    ##"https://civitai.com/api/download/models/288407?token=${TOKEN}" # bodyWriting
    "https://civitai.com/api/download/models/240274?token=${TOKEN}" # zoomXL
    #"https://civitai.com/api/download/models/273996?token=${TOKEN}" # DPO_followPrompt
    #-"https://civitai.com/api/download/models/249521?token=${TOKEN}" # textSDXL
    "https://civitai.com/api/download/models/135867?token=${TOKEN}" # detailTweakerXL   
    #-"https://civitai.com/api/download/models/127928?token=${TOKEN}" # finenude 
    #-"https://civitai.com/api/download/models/445135?token=${TOKEN}" # flatChested
    #-"https://civitai.com/api/download/models/247083?token=${TOKEN}" # slimwomanXL
    #"https://civitai.com/api/download/models/131364?type=Model&format=SafeTensor&token=${TOKEN}" # AhegaoXL
    #"https://civitai.com/api/download/models/513933?type=Model&format=SafeTensor&token=${TOKEN}" # HDA_AhegaoXL
    #-"https://civitai.com/api/download/models/244808?type=Model&format=SafeTensor&token=${TOKEN}" # AllDisneyPrincessXL
    "https://civitai.com/api/download/models/394127?token=${TOKEN}" # realCumXL
    #"https://civitai.com/api/download/models/603935?type=Model&format=SafeTensor&token=${TOKEN}" # Reverse Fellatio LoRa | PonyX '1girl, 1boy, reverse fellatio, head back, deepthroat, uncensored'
    #"https://civitai.com/api/download/models/631044?type=Model&format=SafeTensor&token=${TOKEN}" # '<lora:reverse-fellatio-ponyxl-lora-nochekaiser:1>, reverse fellatio, throat bulge, fellatio, oral, hetero, penis,'
    #"https://civitai.com/api/download/models/562839?type=Model&format=SafeTensor&token=${TOKEN}" # Reverse_fellatio, side view, wide shot,
    ##"https://civitai.com/api/download/models/360315?token=${TOKEN}" # ringGagXL
    ##"https://civitai.com/api/download/models/150991?token=${TOKEN}" # bondageXL
    #"https://civitai.com/api/download/models/319375?type=Model&format=SafeTensor&token=${TOKEN}" # standingspreadeagle
    #"https://civitai.com/api/download/models/601249?type=Model&format=SafeTensor?token=${TOKEN}" # Slave_Submission_XL pony, '1woman, restrained, humiliation, embarrassed, public bondage, slave, submission, NSFW', 'bondage, wrist cuffs, ankle cuffs, collar, crotch rope, shibari', 'surprised, tearing_clothes, undressing, assisted exposure'
    #"https://civitai.com/api/download/models/687700?type=Model&format=SafeTensor?token=${TOKEN}" # 'Y' Slave_Submission pony diffusion V6
    #"https://civitai.com/api/download/models/592762?type=Model&format=SafeTensor?token=${TOKEN}" # Pillory (Sex + Pose)
    #"https://civitai.com/api/download/models/606348?type=Model&format=SafeTensor?token=${TOKEN}" # Testicle Sucking
    #"https://civitai.com/api/download/models/623563?type=Model&format=SafeTensor?token=${TOKEN}" # Human onahole
    #"https://civitai.com/api/download/models/653338?type=Model&format=SafeTensor?token=${TOKEN}" # POV Missionary with holding another's wrist 
    #"https://civitai.com/api/download/models/599632?type=Model&format=SafeTensor?token=${TOKEN}" # Standing Split Sex
    #"https://civitai.com/api/download/models/589398?type=Model&format=SafeTensor?token=${TOKEN}" # Pov Standing Doggy Style + Missionary (looking up)
    #"https://civitai.com/api/download/models/613577?type=Model&format=SafeTensor?token=${TOKEN}" # Spooning
    #"https://civitai.com/api/download/models/531389?type=Model&format=SafeTensor?token=${TOKEN}" # Public Exposure, Embarrassed
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
    #"https://civitai.com/api/download/models/30624?type=Model&format=PickleTensor&size=full&fp=fp16" # 'takagiza-1400' SD1.5
    "https://civitai.com/api/download/models/678576?type=Model&format=SafeTensor" # HDA_MissionaryXL_v1.2 
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

WILDCARDS=(
    "actress.txt"
    "assesoir.txt"
    "basescene.txt"
    "breasts.txt"
    "expression.txt"
    "expression_1.txt"
    "facetype.txt"
    "fototype.txt"
    "improver.txt"
    "name.txt"
    "national.txt"
    "object_pose.txt"
    "outfit.txt"
    "photo_angle.txt"
    "place.txt"
    "saction.txt"
    "saddon.txt"
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
    provisioning_get_wildcards 

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

function provisioning_get_wildcards() {
    urlbase=https://raw.githubusercontent.com/gtrshgt/provisioning/main/wildcards
    dir=/opt/stable-diffusion-webui/extensions/sd-dynamic-prompts/wildcards
    for url in "${WILDCARDS[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${urlbase}/${url}" "${dir}"
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
