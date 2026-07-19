variable "github_token" {
  description = "GitHub PAT"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub Username"
  type        = string
}

variable "repositories" {
  description = "Repositories to create"
  type = map(object({
    description        = string
    visibility         = string
    has_issues         = bool
    gitignore_template = string
    protected          = bool
  }))
}

/*
# terraform.tfvars
repositories = {
  "backend" = {
    description        = "Python REST API"
    visibility         = "public"
    has_issues         = true
    gitignore_template = "Python"
    protected          = true
  }
  "frontend" = {
    description        = "React"
    visibility         = "public"
    has_issues         = true
    gitignore_template = "Node"
    protected          = true
  }
  "infra" = {
    description        = "Infrastructure with OpenTofu"
    visibility         = "public"
    has_issues         = false
    gitignore_template = "Terraform"
    protected          = false
  }
  "docs" = {
    description        = "Project documentation"
    visibility         = "public"
    has_issues         = false
    gitignore_template = ""
    protected          = false
  }
}
*/
