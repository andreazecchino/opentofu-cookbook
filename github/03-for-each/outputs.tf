output "repo_urls" {
  description = "GitHub repositories URL"
  value = {
    for name, repo in github_repository.repos :
    name => repo.html_url
  }
}

output "clone_urls_ssh" {
  description = "SSH URLs clone"
  value = {
    for name, repo in github_repository.repos :
    name => repo.ssh_clone_url
  }
}

output "clone_urls_https" {
  description = "HTTPS URL clone"
  value = {
    for name, repo in github_repository.repos :
    name => repo.http_clone_url
  }
}

output "repos_id" {
  description = "Repositories ID"
  value = {
    for name, repo in github_repository.repos :
    name => repo.repo_id
  }
}

output "protected_repos" {
  description = "Repositories with branch protection"
  value       = keys(github_branch_protection.main)
}
