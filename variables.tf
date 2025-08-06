variable "region" {
  default = "us-east-1"
}

variable "github_token" {
  type      = string
  sensitive = true
}

variable "project_name" {
  default = "codepipeline-demo"
}

variable "repo_owner" {
  default = "jigyansa018"
}

variable "repo_name" {
  default = "codepipeline"
}

variable "branch" {
  default = "main"
}
