export BASEPATH=C:/Users/minie/Desktop/thesis_scripts/semantic_type_detection

cd $BASEPATH

data_URL="http://sato-data.s3.amazonaws.com"
curl "$data_URL/pretrained.zip" > sherlock/pretrained.zip
cd sherlock; unzip pretrained.zip; cd -
rm sherlock/pretrained.zip

