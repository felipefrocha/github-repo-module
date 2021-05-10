Repository to be created

Repository created as a

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_branch.admin_development](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/branch) | resource |
| [github_branch.admin_homolog](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/branch) | resource |
| [github_branch.admin_release](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/branch) | resource |
| [github_branch_default.admin_default](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/branch_default) | resource |
| [github_branch_protection.develop_protection](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/branch_protection) | resource |
| [github_branch_protection.homolog_protection](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/branch_protection) | resource |
| [github_branch_protection.main_protection](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/branch_protection) | resource |
| [github_branch_protection.release_protection](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/branch_protection) | resource |
| [github_repository.repository](https://registry.terraform.io/providers/hashicorp/github/latest/docs/resources/repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_team_ids"></a> [admin\_team\_ids](#input\_admin\_team\_ids) | List Team amdins for this repository | `list(string)` | n/a | yes |
| <a name="input_allows_delections"></a> [allows\_delections](#input\_allows\_delections) | Branch deletions | `bool` | `false` | no |
| <a name="input_dismiss_stale_reviews"></a> [dismiss\_stale\_reviews](#input\_dismiss\_stale\_reviews) | Enable required reviewers | `bool` | `false` | no |
| <a name="input_enforce_admins"></a> [enforce\_admins](#input\_enforce\_admins) | Enforce administration over repo | `bool` | `true` | no |
| <a name="input_protection"></a> [protection](#input\_protection) | Enable protection for Organizations in Pro account | `bool` | n/a | yes |
| <a name="input_repository_description"></a> [repository\_description](#input\_repository\_description) | Repository name in github | `string` | n/a | yes |
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | Repository name in github | `string` | n/a | yes |
| <a name="input_repository_visibility"></a> [repository\_visibility](#input\_repository\_visibility) | Repository visibility in github | `string` | n/a | yes |
| <a name="input_status_ceck_strict"></a> [status\_ceck\_strict](#input\_status\_ceck\_strict) | Check status for pull requests | `bool` | `true` | no |
| <a name="input_status_ckeck_contexts"></a> [status\_ckeck\_contexts](#input\_status\_ckeck\_contexts) | CI / CD checks | `list(string)` | <pre>[<br>  "ci/travis"<br>]</pre> | no |
| <a name="input_team_ids"></a> [team\_ids](#input\_team\_ids) | List of teams that are allowed to manage 'main' branch | `list(string)` | n/a | yes |
| <a name="input_template_owner"></a> [template\_owner](#input\_template\_owner) | Name of a template owner to be used as model to this project | `string` | `""` | no |
| <a name="input_template_repository"></a> [template\_repository](#input\_template\_repository) | Template's Repository Name | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repo_id"></a> [repo\_id](#output\_repo\_id) | n/a |
