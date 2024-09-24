package noc

import (
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type NocStatusRouter struct {
}

// InitNocStatusRouter 初始化 NocStatus 路由信息
func (s *NocStatusRouter) InitNocStatusRouter(Router *gin.RouterGroup) {
	nsRouter := Router.Group("ns").Use(middleware.OperationRecord())
	var nsApi = v1.ApiGroupApp.NocApiGroup.NocStatusApi
	{
		nsRouter.POST("createNocStatus", nsApi.CreateNocStatus)   // 新建NocStatus
		nsRouter.DELETE("deleteNocStatus", nsApi.DeleteNocStatus) // 删除NocStatus
		nsRouter.DELETE("deleteNocStatusByIds", nsApi.DeleteNocStatusByIds) // 批量删除NocStatus
		nsRouter.PUT("updateNocStatus", nsApi.UpdateNocStatus)    // 更新NocStatus
	}
}


func (s *NocStatusRouter) InitPubNocStatusRouter(Router *gin.RouterGroup) {
	nsRouterWithoutRecord := Router.Group("ns")
	var nsApi = v1.ApiGroupApp.NocApiGroup.NocStatusApi
	{
		nsRouterWithoutRecord.GET("findNocStatus", nsApi.FindNocStatus)        // 根据ID获取NocStatus
		nsRouterWithoutRecord.GET("getNocStatusList", nsApi.GetNocStatusList)  // 获取NocStatus列表
	}
}
