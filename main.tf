resource "aws_ssm_parameter" "params" {
  count= length(var.params)  
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
default =[
{name= "roboshop.dev.frontend.catalogue_url", value="http://catalogue-dev.harshadevops.shop:8080/", type="String"},
{name= "roboshop.dev.frontend.user_url", value="http://user-dev.harshadevops.shop:8080/", type="String"},
{name= "roboshop.dev.frontend.cart_url", value="http://cart-dev.harshadevops.shop:8080/", type="String"},
{name= "roboshop.dev.frontend.shipping_url", value="http://shipping-dev.harshadevops.shop:8080/", type="String"},
{name= "roboshop.dev.frontend.payment_url", value="http://payment-dev.harshadevops.shop:8080/", type="String"},
 ]
}