export SINGULARITY_CACHEDIR=`pwd`
export SINGULARITY_TMPDIR=`pwd`

sudo -E singularity build monai.img docker://bitmayang/monai