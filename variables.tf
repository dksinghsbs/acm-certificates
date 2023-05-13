variable "hosted_zone_name" {
  description = "Hosted zone that domain record exists in"
}

variable "environment" {
  description = "Environment being deployed"
}

variable "service" {
  description = "Name of the service"
}

variable "owner" {
  description = "Name of who owns the project"
}

variable "infrastructure_version" {
  description = "used in tags to track infrastructure versions"
}

variable "github_repository_name" {
  description = "Github repository Name"
}

variable "private_zone" {
  description = "(Optional) Determinse whether zone is private or not"
}

variable "create_certificate" {
  description = "Whether to create ACM certificate"
  type        = bool
  default     = true
}

variable "validate_certificate" {
  description = "Whether to validate certificate by creating Route53 record"
  type        = bool
  default     = true
}

variable "validation_allow_overwrite_records" {
  description = "Whether to allow overwrite of Route53 records"
  type        = bool
  default     = true
}

variable "wait_for_validation" {
  description = "whether to wait for the validation to complete"
  type        = bool
  default     = true
}

variable "domain_name" {
  description = "A domain name for which the certificate should be issued"
  type        = string
  default     = ""
}

variable "subject_alternative_names" {
  description = "A list of domains that should be SANs in the issued certificate"
  type        = list(string)
  default     = []
}

variable "validation_method" {
  description = "which method to use for validation. DNS or EMAIL are valid, NONE can be used for certificates that were imported into ACM and then into Terraform"
  type        = string
  default     = "DNS"
}