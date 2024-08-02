#!/bin/bash
input=/home/k66/spinalcordtoolbox/data/data_spinalcord-segmentation/t2.nii.gz
echo $input
python spineps/entrypoint.py sample  -i $input \
                                        -ms t2w_segmentor_2.0 \
                                        -mv inst_vertebra_3.0 \
                                        -dn /home/k66/spineps/spineps/data/check \
                                        -sui \
                                        -override_instance \
                                        -override_semantic \
                                        -override_ctd \
                                        -override_postpair \
                                        -nocrop \
                                        -v
    