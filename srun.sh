#!/bin/bash

module purge
module load cesga/system miniconda3/22.11
eval "$(conda shell.bash hook)"
conda deactivate
source $STORE/mytorchdist/bin/deactivate
source $STORE/mytorchdist/bin/activate

time python mainNGPU.py --strategy="dp"
time python mainNGPU.py --strategy="ddp"
time python mainNGPU.py --strategy="fsdp"
time python mainNGPU.py --strategy="deepspeed"
#time python mainNGPU.py --strategy="deepspeed_stage_3"

#time python main1GPU.py
