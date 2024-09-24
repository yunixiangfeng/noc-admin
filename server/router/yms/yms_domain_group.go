package yms

import (
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type YmsDomainGroupRouter struct {
}

// InitYmsDomainGroupRouter 初始化 YmsDomainGroup 路由信息
func (s *YmsDomainGroupRouter) InitYmsDomainGroupRouter(Router *gin.RouterGroup) {
	ymsDomainGroupRouter := Router.Group("ymsDomainGroup").Use(middleware.OperationRecord())
	ymsDomainGroupRouterWithoutRecord := Router.Group("ymsDomainGroup")
	var ymsDomainGroupApi = v1.ApiGroupApp.YmsApiGroup.YmsDomainGroupApi
	{
		ymsDomainGroupRouter.POST("createYmsDomainGroup", ymsDomainGroupApi.CreateYmsDomainGroup)   // 新建YmsDomainGroup
		ymsDomainGroupRouter.DELETE("deleteYmsDomainGroup", ymsDomainGroupApi.DeleteYmsDomainGroup) // 删除YmsDomainGroup
		ymsDomainGroupRouter.DELETE("deleteYmsDomainGroupByIds", ymsDomainGroupApi.DeleteYmsDomainGroupByIds) // 批量删除YmsDomainGroup
		ymsDomainGroupRouter.PUT("updateYmsDomainGroup", ymsDomainGroupApi.UpdateYmsDomainGroup)    // 更新YmsDomainGroup
	}
	{
		ymsDomainGroupRouterWithoutRecord.GET("findYmsDomainGroup", ymsDomainGroupApi.FindYmsDomainGroup)        // 根据ID获取YmsDomainGroup
		ymsDomainGroupRouterWithoutRecord.GET("getYmsDomainGroupList", ymsDomainGroupApi.GetYmsDomainGroupList)  // 获取YmsDomainGroup列表
	}
}
