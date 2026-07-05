output "repo_url" {
  description = "GitHub repository URL"
  value       = github_repository.repo.html_url
}

output "clone_url_ssh" {
  description = "SSH URL clone"
  value       = github_repository.repo.ssh_clone_url
}

output "clone_url_https" {
  description = "HTTPS URL clone"
  value       = github_repository.repo.http_clone_url
}

output "repo_id" {
  description = "Repository ID"
  value       = github_repository.repo.repo_id
}

output "branch_protection_id" {
  description = "Rule ID"
  value       = github_branch_protection.main.id
}

output "protection_pattern" {
  description = "Branch protection pattern"
  value       = github_branch_protection.main.pattern
}
