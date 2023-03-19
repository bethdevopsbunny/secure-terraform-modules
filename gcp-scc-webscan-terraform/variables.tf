
variable "project" {
  type = string
}

variable "scan_name" {
  type    = string
  default = "default_scan"
}

variable "provided_starting_urls" {
  type    = list(string)
  default = [""]
}

variable "target_platforms" {
  type    = list(string)
  default = ["COMPUTE"]
}

variable "interval_duration_days" {
  description = "interval between scans"
  type        = string
  default     = 7
}

variable "delay" {
  description = "by default applying triggers a new scan, this creates a delay before being triggered"
  type        = string
  # see timeadd function for input format
  # https://developer.hashicorp.com/terraform/language/functions/timeadd
  default = "0"
}

variable "include_provided_urls" {
  description = "create a scan object with the list of urls provided in the 'starting_urls' variable"
  type        = bool
  default     = false
}

variable "include_static_ips" {
  description = "dynamically collect the static ips bound to the project and include them in a second scan object"
  type        = bool
  default     = true
}