package noc

import (
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type NocDirectReasonsRouter struct {
}

// InitNocDirectReasonsRouter 初始化 NocDirectReasons 路由信息
func (s *NocDirectReasonsRouter) InitNocDirectReasonsRouter(Router *gin.RouterGroup) {
	ndrRouter := Router.Group("ndr").Use(middleware.OperationRecord())
	var ndrApi = v1.ApiGroupApp.NocApiGroup.NocDirectReasonsApi
	{
		ndrRouter.POST("createNocDirectReasons", ndrApi.CreateNocDirectReasons)   // 新建NocDirectReasons
		ndrRouter.DELETE("deleteNocDirectReasons", ndrApi.DeleteNocDirectReasons) // 删除NocDirectReasons
		ndrRouter.DELETE("deleteNocDirectReasonsByIds", ndrApi.DeleteNocDirectReasonsByIds) // 批量删除NocDirectReasons
		ndrRouter.PUT("updateNocDirectReasons", ndrApi.UpdateNocDirectReasons)    // 更新NocDirectReasons
	}
}


func (s *NocDirectReasonsRouter) InitPubNocDirectReasonsRouter(Router *gin.RouterGroup) {
	ndrRouterWithoutRecord := Router.Group("ndr")
	var ndrApi = v1.ApiGroupApp.NocApiGroup.NocDirectReasonsApi
	{
		ndrRouterWithoutRecord.GET("findNocDirectReasons", ndrApi.FindNocDirectReasons)        // 根据ID获取NocDirectReasons
		ndrRouterWithoutRecord.GET("getNocDirectReasonsList", ndrApi.GetNocDirectReasonsList)  // 获取NocDirectReasons列表
	}
}