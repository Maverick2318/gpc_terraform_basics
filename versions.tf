terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.0.0"
    }
  }
}

provider "google" {
  credentials = file("/Users/nsiddiq/.config/gcloud/application_default_credentials.json")
  project = "vpcvideo-400817"
  region = "us-central1"
}