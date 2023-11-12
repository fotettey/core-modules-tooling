#!/bin/bash


export GOOGLE_APPLICATION_CREDENTIALS='/home/vagrant/projects/.secrets/metro-infra-dev-4e86d7cc9bda.json'
export GCP_PROJECT_ID="metro-infra-dev"
export GCP_REGION="us-west1"

# Setting TF ENV VARs
# https://developer.hashicorp.com/terraform/cli/config/environment-variables
export TF_INPUT=0
export TF_VAR_region=us-west1
export TF_VAR_stage=dev
export NAMESPACE="infra"


