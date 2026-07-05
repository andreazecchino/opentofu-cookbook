resource "github_repository" "repo" {
  name = var.repo_name
  description = var.repo_description
  visibility = var.visibility

  auto_init = true
  gitignore_template = "Terraform"
  license_template = "mit"

  has_issues = true
  has_wiki = false
  has_projects = false
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = false
  delete_branch_on_merge = false
}
