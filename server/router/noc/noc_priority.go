package noc

import (
	v1 "github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type NocPriorityRouter struct {
}

// InitNocPriorityRouter 初始化 NocPriority 路由信息
func (s *NocPriorityRouter) InitNocPriorityRouter(Router *gin.RouterGroup) {
	NPRouter := Router.Group("NP").Use(middleware.OperationRecord())
	var NPApi = v1.ApiGroupApp.NocApiGroup.NocPriorityApi
	{
		NPRouter.POST("createNocPriority", NPApi.CreateNocPriority)   // 新建NocPriority
		NPRouter.DELETE("deleteNocPriority", NPApi.DeleteNocPriority) // 删除NocPriority
		NPRouter.DELETE("deleteNocPriorityByIds", NPApi.DeleteNocPriorityByIds) // 批量删除NocPriority
		NPRouter.PUT("updateNocPriority", NPApi.UpdateNocPriority)    // 更新NocPriority
	}
}


func (s *NocPriorityRouter) InitPubNocPriorityRouter(Router *gin.RouterGroup) {
	NPRouterWithoutRecord := Router.Group("NP")
	var NPApi = v1.ApiGroupApp.NocApiGroup.NocPriorityApi
	{
		NPRouterWithoutRecord.GET("findNocPriority", NPApi.FindNocPriority)        // 根据ID获取NocPriority
		NPRouterWithoutRecord.GET("getNocPriorityList", NPApi.GetNocPriorityList)  // 获取NocPriority列表
	}
}