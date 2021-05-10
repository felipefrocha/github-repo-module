/**
 * # Repository module
 *
 * ### This module Creates a Repository at Github using terraform
 * ---
 */

terraform {
  required_version = ">= 0.13.0"
  required_providers {
    github = {
      version = ">= 4.9.0"
      source = "hashicorp/github"
    }
  }
}

resource "github_repository" "repository" {
  name        = var.repository_name
  description = var.repository_description

  visibility = var.repository_visibility

  template {
      owner      = var.template_owner
      repository = var.template_repository
  }
}

resource "github_branch" "admin_development" {
  repository = github_repository.repository.name
  branch     = "develop"
}

resource "github_branch" "admin_homolog" {
  repository = github_repository.repository.name
  branch     = "homolog"
}


resource "github_branch" "admin_release" {
  repository = github_repository.repository.name
  branch     = "release"
}

resource "github_branch_default" "admin_default" {
  repository = github_repository.repository.name
  branch     = github_branch.admin_development.branch
}


resource "github_branch_protection" "main_protection" {
  count         = var.protection ? 1 : 0
  repository_id = github_repository.repository.node_id

  pattern          = "main"
  enforce_admins   = var.enforce_admins
  allows_deletions = var.allows_delections

  required_status_checks {
    strict   = var.status_ceck_strict
    contexts = var.status_ckeck_contexts
  }

  required_pull_request_reviews {
    dismiss_stale_reviews  = var.dismiss_stale_reviews
    dismissal_restrictions = var.admin_team_ids
  }

  push_restrictions = var.admin_team_ids

}

resource "github_branch_protection" "develop_protection" {
  count         = var.protection ? 1 : 0
  repository_id = github_repository.repository.node_id

  pattern          = "develop"
  enforce_admins   = var.enforce_admins
  allows_deletions = var.allows_delections

  required_status_checks {
    strict   = var.status_ceck_strict
    contexts = var.status_ckeck_contexts
  }

  required_pull_request_reviews {
    dismiss_stale_reviews  = var.dismiss_stale_reviews
    dismissal_restrictions = var.team_ids
  }

  push_restrictions = var.team_ids

}

resource "github_branch_protection" "homolog_protection" {
  count         = var.protection ? 1 : 0
  repository_id = github_repository.repository.node_id

  pattern          = "homolog"
  enforce_admins   = var.enforce_admins
  allows_deletions = var.allows_delections

  required_status_checks {
    strict   = var.status_ceck_strict
    contexts = var.status_ckeck_contexts
  }

  required_pull_request_reviews {
    dismiss_stale_reviews  = var.dismiss_stale_reviews
    dismissal_restrictions = var.team_ids
  }

  push_restrictions = var.team_ids

}

resource "github_branch_protection" "release_protection" {
  count         = var.protection ? 1 : 0
  repository_id = github_repository.repository.node_id

  pattern          = "release"
  enforce_admins   = var.enforce_admins
  allows_deletions = var.allows_delections

  required_status_checks {
    strict   = var.status_ceck_strict
    contexts = var.status_ckeck_contexts
  }

  required_pull_request_reviews {
    dismiss_stale_reviews  = var.dismiss_stale_reviews
    dismissal_restrictions = var.team_ids
  }

  push_restrictions = var.admin_team_ids

}