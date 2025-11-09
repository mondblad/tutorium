variable "bootstrap_servers" {
  type    = list(string)
  default = ["localhost:9092"]
}

variable "topic_user_created" {
  type        = string
  description = "Топик для сообщений из Auth в User"
}