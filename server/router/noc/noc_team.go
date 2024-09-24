package noc

import (
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type NocTeamRouter struct {
}

// InitNocTeamRouter 初始化 NocTeam 路由信息
func (s *NocTeamRouter) InitNocTeamRouter(Router *gin.RouterGroup) {
	ntRouter := Router.Group("nt").Use(middleware.OperationRecord())
	var ntApi = v1.ApiGroupApp.NocApiGroup.NocTeamApi
	{
		ntRouter.POST("createNocTeam", ntApi.CreateNocTeam)   // 新建NocTeam
		ntRouter.DELETE("deleteNocTeam", ntApi.DeleteNocTeam) // 删除NocTeam
		ntRouter.DELETE("deleteNocTeamByIds", ntApi.DeleteNocTeamByIds) // 批量删除NocTeam
		ntRouter.PUT("updateNocTeam", ntApi.UpdateNocTeam)    // 更新NocTeam
	}
}

func (s *NocTeamRouter) InitPubNocTeamRouter(Router *gin.RouterGroup) {
	ntRouterWithoutRecord := Router.Group("nt")
	var ntApi = v1.ApiGroupApp.NocApiGroup.NocTeamApi
	{
		ntRouterWithoutRecord.GET("findNocTeam", ntApi.FindNocTeam)        // 根据ID获取NocTeam
		ntRouterWithoutRecord.GET("getNocTeamList", ntApi.GetNocTeamList)  // 获取NocTeam列表
	}
}
