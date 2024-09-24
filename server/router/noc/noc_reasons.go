package noc

import (
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type NocReasonsRouter struct {
}

// InitNocReasonsRouter 初始化 NocReasons 路由信息
func (s *NocReasonsRouter) InitNocReasonsRouter(Router *gin.RouterGroup) {
	nsRouter := Router.Group("nr").Use(middleware.OperationRecord())
	var nsApi = v1.ApiGroupApp.NocApiGroup.NocReasonsApi
	{
		nsRouter.POST("createNocReasons", nsApi.CreateNocReasons)   // 新建NocReasons
		nsRouter.DELETE("deleteNocReasons", nsApi.DeleteNocReasons) // 删除NocReasons
		nsRouter.DELETE("deleteNocReasonsByIds", nsApi.DeleteNocReasonsByIds) // 批量删除NocReasons
		nsRouter.PUT("updateNocReasons", nsApi.UpdateNocReasons)    // 更新NocReasons
	}
}


func (s *NocReasonsRouter) InitPubNocReasonsRouter(Router *gin.RouterGroup) {
	nsRouterWithoutRecord := Router.Group("nr")
	var nsApi = v1.ApiGroupApp.NocApiGroup.NocReasonsApi
	{
		nsRouterWithoutRecord.GET("findNocReasons", nsApi.FindNocReasons)        // 根据ID获取NocReasons
		nsRouterWithoutRecord.GET("getNocReasonsList", nsApi.GetNocReasonsList)  // 获取NocReasons列表
	}
}