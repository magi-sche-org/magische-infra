# resource "tfe_organization" "magische_organization" {
#   name  = "magische"
#   email = "spritz.pickle-08@icloud.com"
# }

# resource "tfe_project" "magische_project" {
#   name         = "magische"
#   organization = tfe_organization.magische_organization.name
# }

variable "GITHUB_APP_INSTALLATION_ID" {
  type = string
}
variable "organization_name" {
  type = string
}
variable "project_id" {
  type = string
}
variable "workspace_name" {
  type = string
}
variable "working_directory" {
  type = string
}
resource "tfe_workspace" "magische_infra_terraform_cloud" {
  name         = var.workspace_name
  organization = var.organization_name
  project_id   = var.project_id
  auto_apply   = true
  vcs_repo {
    identifier                 = "magi-sche-org/magische-infra"
    branch                     = "main"
    github_app_installation_id = var.GITHUB_APP_INSTALLATION_ID
  }
  working_directory = var.working_directory
  tag_names         = []
}

# resource "tfe_workspace_settings" "magische_infra_terraform_cloud" {
#   workspace_id = tfe_workspace.magische_infra_terraform_cloud.id
# }
