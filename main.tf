terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.23.0"
    }
  }
}

provider "github" { 
}

module "pet" {
  source  = "app.terraform.io/krk-organization/pet/random"
  version = "0.0.1"
}

resource "github_repository" "example" {
  name        = module.pet.pet_name
  description = "My awesome codebase"

  visibility = "public"


}