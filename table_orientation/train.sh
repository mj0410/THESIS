export BASEPATH=C:/Users/minie/Desktop/thesis_scripts/table_orientation
export EMBEDDING=C:/Users/minie/Desktop/FU/Thesis/w2v_embedding.bin
export MODEL_DIR=$BASEPATH/model
export TRAIN_TABLES=$BASEPATH/tables.pickle

python DeepTableTrain.py -e 5 -l 0.01 -v $EMBEDDING -i $TRAIN_TABLES -o $MODEL_DIR
#python DeepTableEval.py -m $MODEL_DIR/ -ip $INPUTPATH -o evaluation
