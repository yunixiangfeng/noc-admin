package noc

import (
	v1 "github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type NocRouter struct{}

func (s *NocRouter) InitNocRouter(Router *gin.RouterGroup) {
	nocRouter := Router.Group("noc").Use(middleware.OperationRecord())
	nocApi := v1.ApiGroupApp.NocApiGroup.NocApi
	{
		nocRouter.POST("createNoc", nocApi.CreateNoc)
		nocRouter.DELETE("deleteNocById", nocApi.DeleteNocById)
		nocRouter.PUT("updateNocById", nocApi.UpdateNocById)
	}
}

func (s *NocRouter) InitPubNocRouter(Router *gin.RouterGroup) {
	nocRouterWithoutRecord := Router.Group("noc")
	nocApi := v1.ApiGroupApp.NocApiGroup.NocApi
	{
		nocRouterWithoutRecord.GET("getNocList", nocApi.GetNocList)
		nocRouterWithoutRecord.GET("getNocDetailById", nocApi.GetNocDetailById)
		nocRouterWithoutRecord.GET("getNocById", nocApi.GetNocById)
	}
}
