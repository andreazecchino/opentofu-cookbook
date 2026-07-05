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
  default     = "terraformed-repo"
}

variable "repo_description" {
  description = "Repository's description"
  type        = string
  default     = "GitHub repository terraformed with OpenTofu"
}

variable "visibility" {
  description = "Visibility: public o private?"
  type        = string
  default     = "public"
}
