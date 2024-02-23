data "github_repository" "content" {
  full_name = "rpreist/AKS"
}

locals {
  secrets = {
    KEY = "value"
    # Add more secrets as needed
  }
}

resource "github_actions_secret" "secret" {
  for_each      = local.secrets
  repository    = data.github_repository.content.name
  secret_name   = each.key
  plaintext_value = each.value
}
output "github_repository_name" {
  value = data.github_repository.content.name
}
