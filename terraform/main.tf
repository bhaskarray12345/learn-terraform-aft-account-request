module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "bhaskar.ray102024@outlook.com"
    AccountName               = "southern-water"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "bhaskar.ray102024@outlook.com"
    SSOUserFirstName          = "Southern"
    SSOUserLastName           = "Water"
  }


  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "southern-water"
}
