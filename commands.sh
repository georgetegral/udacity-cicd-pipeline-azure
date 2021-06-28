git clone git@github.com:georgetegral/udacity-cicd-pipeline-azure.git
python3 -m venv ~/.myrepo
source ~/.myrepo/bin/activate
cd udacity-cicd-pipeline-azure
make all
python app.py
bash ./make_prediction.sh
az webapp up -n udacityflaskml
sh make_predict_azure_app.sh
az webapp log tail --resource-group jorgerene__rg_Linux_centralus -n udacityflaskml
pip install locust
locust