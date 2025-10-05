variable "server_ip" {
  description = "Target server IP address"
  type        = string
  default     = "192.168.0.132"
}

variable "server_user" {
  description = "SSH username"
  type        = string
  default     = "rohit"
}

variable "private_key_path" {
  description = "Path to SSH private key"
  type        = string
  default     = "/home/rohit/.ssh/id_rsa"
}
