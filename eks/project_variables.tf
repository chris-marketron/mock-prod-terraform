# project variables
variable "name" {
  type        = string
  default = "rev-dev2"
  description = "A name for this stack."
}

variable "region" {
  type        = string
  default     = "ap-southeast-2"
  description = "Region where this stack will be deployed."
}
