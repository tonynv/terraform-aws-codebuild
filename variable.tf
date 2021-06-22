variable "region" {
  description = "Codebuild region"
}

variable "artifacts_type" {
  description = "Type of artifacts (supports: NO_ARTIFACTS or CODEPIPELINE)"
  default     = "NO_ARTIFACTS"
}

variable "project_name" {
  description = "Project Name (Only alpha chars and dashes allowed)"
}

variable "git_repo" {
  description = "Github repo "
}

variable "git_clone_depth" {
  description = "Repo clone depth"
}

variable "build_image" {
  description = "Build container image"
}

variable "compute_type" {
  description = "Compute type"
}

variable "build_spec" {
  description = "Relative Path to build spec file"

}

variable "tags" {
  description = "Codebuild Tags"
  default     = {}
}

variable "create_role_and_policy" {
  description = "Create a new IAM role and policy if true"
  type        = bool
  default     = true
}

variable "codebuild_role_arn" {

  description = "ARN of the existing codebuild role"
  type        = string
  default     = ""
}

### BUILD ENVS

variable "environment" {
  description = "Environment in which the script is run. Eg: develop, main, etc"
  type        = string
}

