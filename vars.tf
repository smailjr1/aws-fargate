variable "aws_region" {
  description = "The AWS region in which resources will be deployed."
  type        = string
  default     = "eu-west-1"
}

variable "environment" {
  description = "The name of the environment"
  type        = string
  default     = "development"
}

variable "vpc_cidr" {
  description = "The CIDR block for the Virtual Private Cloud (VPC)."
  type        = string
  default     = "10.0.0.0/22"
}

variable "public_subnets_cidr" {
  description = "CIDR blocks for the public subnets within the VPC."
  type        = list(string)
  default     = ["10.0.0.0/26", "10.0.0.64/26"]
}

variable "private_subnets_cidr" {
  description = "CIDR blocks for the private subnets within the VPC."
  type        = list(string)
  default     = ["10.0.3.0/26", "10.0.3.64/26"]
}

variable "GitHubToken" {
  description = "GitHub Token for accessing the repository."
  type        = string
  sensitive   = true
  default     = "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"
  
}

variable "GitHubRepo" {
  description = "The name of the GitHub repository."
  type        = string
  default     = "aws-fargate"
}

variable "GitHubOwner" {
  description = "The owner of the GitHub repository."
  type        = string
  default     = "smailjr1"
}

variable "GitHubBranch" {
  description = "The branch of the GitHub repository to use."
  type        = string
  default     = "main"
}

variable "BucketName" {
  description = "The name of the S3 bucket for storing artifacts."
  type        = string
  default     = "aws-fargate-s3"

variable "NotificationEmail" {
  description = "The email address to receive deployment notifications."
  type        = string
  default     = "izaid@ctdconsulting.fr"
}

variable "codebuild_project_name" {
  description = "The name of the CodeBuild project for building code."
  type        = string
  default     = "CodeBuildProject"
}

variable "aws_account_id" {
  description = "The AWS Account ID associated with the resources."
  type        = string
  default     = "2002-6881-8177"
}