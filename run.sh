export ORIGIN=C:/Users/minie/Desktop/thesis_scripts
export BASEPATH=C:/Users/minie/Desktop/thesis_scripts/semantic_type_detection

export DT_MODEL_DIR=$ORIGIN/table_orientation/model
export INPUT_DIR=C:/Users/minie/Desktop/FU/Thesis/Synthea/100/csv_test_rcol_test

export SHERLOCKPATH=$BASEPATH/sherlock
export EXTRACTPATH=$BASEPATH/extract

export TYPENAME='syntheaB'
export LDANAME='t18_rcol'
export DTOUTPUT='synthea100_csv_test_rcol_test'

cd $ORIGIN/table_orientation
python DeepTablePred.py -m $DT_MODEL_DIR/model_100.hdf5 -i $INPUT_DIR -o $DTOUTPUT

#cd $BASEPATH/model
#python pred_CRF.py -dt $DTOUTPUT -n 50 -m CRF_rcol_t18_50-fold -o t18_rcol_csv_test_newscripts -t $LDANAME

#while true
#do
#  echo "Continue to semantic type detection YES[y] NO[n]"
#  read ans

#  if [[ "$ans" == "y" ]] || [[ "$ans" == "yes" ]]; then
#    cd $BASEPATH/model
#    python pred_CRF.py -dt $DTOUTPUT -n 50 -m CRF_rcol_t18_50-fold -o t18_rcol_csv_test_newscripts -t $LDANAME
#    break
#  elif [[ "$ans" == "n" ]] || [[ "$ans" == "no" ]]; then
#    echo "quit"
#    break
#  else
#    echo "please enter yes/y or no/n"
#  fi
#done


