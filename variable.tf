variable "port" {
  type        = number
  default     = 8080
}	
variable "alb_tg_name" {
  type        = string
  default     = "tf-alb-tg"
}
variable "vpc_id" {
  type        = string
  default     = "vpc-0ff4ab841a437776c"
}
variable "alb_name" {
  type        = string
  default     = "tf-alb-app"
}
variable "subnets" {
  type        = list(string)
  default     = ["subnet-009c735cb2b90fecd","subnet-0650e442f12bbb01c","subnet-0a487fa1e35ed75a4"]

}
variable "port2" {
  type        = number
  default     = 443
}
variable "port1" {
  type        = number
  default     = 80
}
variable "ssl" {
  type        = string
  default     = "ELBSecurityPolicy-2016-08"

}
variable "arn" {
  type        = string
  default     = "arn:aws:acm:us-east-1:805556005655:certificate/62c4063a-9bcf-4364-8617-ce5ddd9c576d"

}
variable "cidr" {
  type        = string
  default     = "10.0.1.0/24"

}







  
