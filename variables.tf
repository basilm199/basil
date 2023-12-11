variable "project_name" {
  type        = string
  description = "Name of the project"
}

variable "project_env" {
  type        = string
  description = "Project environment"
}

variable "region" {
  type        = string
  description = "region"
}

variable "ami_id" {
  type        = string
  description = "ami-id"
}

variable "instance_type" {
  type        = string
  description = "instance_type"
}

variable "hostname" {
  type        = string
  description = "hostname"
  default     = "win"
}

variable "domain_name" {
  type        = string
  description = "domain"
  default     = "basilsdomain.online"
}
