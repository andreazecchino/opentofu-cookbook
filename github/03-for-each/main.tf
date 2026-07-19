resource "github_repository" "repos" {
  for_each = var.repositories

  name        = each.key
  description = each.value.description
  visibility  = each.value.visibility
  has_issues  = each.value.has_issues

  auto_init          = true
  gitignore_template = each.value.gitignore_template != "" ? each.value.gitignore_template : null
  license_template   = "mit"

  has_wiki     = false
  has_projects = false

  allow_merge_commit     = false
  allow_squash_merge     = true
  allow_rebase_merge     = false
  delete_branch_on_merge = false
}

resource "github_branch_protection" "main" {
  for_each = {
    for name, repo in var.repositories :
    name => repo
    if repo.protected
  }

  repository_id = github_repository.repos[each.key].node_id
  pattern       = "main"

  enforce_admins         = true
  allows_deletions       = false
  allows_force_pushes    = false
  require_signed_commits = false

  required_pull_request_reviews {
    required_approving_review_count = 1
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = false
  }
}
