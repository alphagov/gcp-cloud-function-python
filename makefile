-include .env
REPO := $(notdir $(shell pwd))

deploy:
	gcloud functions deploy $(REPO) \
	--gen2 \
	--project=$(GCP_PROJECT_ID) \
	--region=europe-west2 \
	--runtime=python310 \
	--memory=512MB \
	--trigger-http \
	--source=. \
	--entry-point=run

init:
	pyenv virtualenv $(REPO) | pyenv activate $(REPO) | pyenv local $(REPO)
	pip install -r requirements.txt
