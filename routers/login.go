package routers

import (
	"github.com/astaxie/beego"
	"rockxsj/controllers"
)

func init() {
	beego.Router("/login", &controllers.LoginController{}, "get:ShowLoginBox")
	beego.Router("/login/login", &controllers.LoginController{}, "post:Login")
	beego.Router("/login/logout", &controllers.LoginController{}, "get:Logout")
}
