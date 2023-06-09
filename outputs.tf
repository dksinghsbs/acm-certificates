output "this_acm_certificate_arn" {
    description = "The ARN of the certificate"
    value = element(concat(aws_acm_certificate.this.*.arn, [""]), 0) 
}

output "this_acm_certificate_domain_validation_options" {
  description = "A list of attributes to feed into other resources to complete certificate validation. Can have more than one element, e.g. if SANS are defined. Only set if DNS-validation was used."
  value = flatten(aws_acm_certificate.this.*.domain_validation_options)
}

output "this_acm_certificate_validation_emails" {
  description = "A list of addresses that received a validation E-mail. Only set if Email-validation was used."
  value = flatten(aws_acm_certificate.this.*.validation_emails)
}

output "validation_route53_record_fqdns" {
  description = "List of FQDNS built using the zone domain and name."
  value = aws_route53_record.validation.*.fqdn
}

output "distinct_domain_names" {
  description = "List of distinct domains names used for this validation."
  value = local.distinct_domain_names
}

output "validation_domains" {
  description = "List of distinct domains validation options. This is useful if subject alternative names contains wildcards"
  value = local.validation_domains
}