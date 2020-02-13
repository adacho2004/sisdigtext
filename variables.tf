variable "service_instance_name" {
  type = "string"
  description = "インスタンス名"
  default = "tokyo_railway"
}

variable "tag1" {
  type = "string"
  description = "インスタンスにつけるタグ名"
  default = "tokyo_railway"
}

variable "tag2" {
  type = "string"
  description = "インスタンスにつけるタグ名"
  default = "tokyo"
}
