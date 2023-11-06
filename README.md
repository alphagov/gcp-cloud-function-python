# gcp-cloud-function-python
Template for building a Google Cloud Function


## Requirements 

* pyenv to manage virtual environments
* python-dotenv to handle environment variables


## Commands

* run `make init` to build your virtual environment
* run `make deploy` to deploy your function to GCP

## To use

Place your code within the `run` function in `main.py`. The `run` function is the code that runs from the http endpoint for your Cloud Function. Place your code within the `run` function.
This must take a `request` argument and also it must include a return statement.
