export SINGULARITY_CACHEDIR=`pwd`
export SINGULARITY_TMPDIR=`pwd`

sudo -E singularity build monai_v1.img docker://bitmayang/ubuntu1604:monai.1.0