variable "repository_name" {
  type        = string
  description = "Repository name in github"
}

variable "repository_description" {
  type        = string
  description = "Repository name in github"
}

variable "repository_visibility" {
  type        = string
  description = "Repository visibility in github"
}

variable "team_ids" {
  type        = list(string)
  description = "List of teams that are allowed to manage 'main' branch"
}

variable "protection" {
  type        = bool
  description = "Enable protection for Organizations in Pro account"
}

variable "enforce_admins" {
  type        = bool
  description = "Enforce administration over repo"
  default     = true
}

variable "allows_delections" {
  type        = bool
  description = "Branch deletions"
  default     = false
}

variable "status_ckeck_contexts" {
  type        = list(string)
  description = "CI / CD checks"
  default = ["ci/travis"]
}

variable "status_ceck_strict" {
    type        = bool
  description = "Check status for pull requests"
  default     = true
}

variable "template_owner" {
  type = string
  description = "Name of a template owner to be used as model to this project"
  default = ""
}

variable "template_repository" {
  type = string
  description = "Template's Repository Name"
  default = ""
}

variable "admin_team_ids" {
  type = list(string)
  description = "List Team amdins for this repository"
}

variable "dismiss_stale_reviews" {
  type = bool
  description = "Enable required reviewers"
  default = false
}
