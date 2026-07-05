variable "github_token" {
  description = "GitHub PAT"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub Username"
  type        = string
}

variable "repo_name" {
  description = "Repository's name"
  type        = string
  default     = "terraformed-repo-with-bp"
}

variable "repo_description" {
  description = "Repository's description"
  type        = string
  default     = "GitHub repository with branch protection terraformed with OpenTofu"
}

variable "visibility" {
  description = "Visibility: public o private?"
  type        = string
  default     = "public"
}

variable "required_approvals" {
  description = "Number of reviews before merge"
  type        = number
  default     = 1
}

variable "enforce_admins" {
  description = "Apply rules even to admins"
  type        = bool
  default     = true
}

variable "required_status_checks" {
  description = "List of status checks"
  type        = list(string)
  default     = [] # GitHub Actions job name
}
