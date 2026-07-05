resource "github_repository" "repo" {
  name        = var.repo_name
  description = var.repo_description
  visibility  = var.visibility

  auto_init          = true
  gitignore_template = "Terraform"
  license_template   = "mit"

  has_issues             = true
  has_wiki               = false
  has_projects           = false
  allow_merge_commit     = false
  allow_squash_merge     = true
  allow_rebase_merge     = false
  delete_branch_on_merge = false
}

resource "github_branch_protection" "main" {
  repository_id = github_repository.repo.node_id
  pattern       = "main"

  # Block direct push on main (even for admins)
  enforce_admins         = var.enforce_admins
  allows_deletions       = false
  allows_force_pushes    = false
  require_signed_commits = false

  # Reviews required before merge
  required_pull_request_reviews {
    required_approving_review_count = var.required_approvals
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = false
  }

  # Status check before merge
  required_status_checks {
    strict   = true
    contexts = var.required_status_checks
  }
}
