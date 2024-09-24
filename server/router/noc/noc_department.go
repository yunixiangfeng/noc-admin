package noc

import (
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type NocDepartmentRouter struct {
}

// InitNocDepartmentRouter 初始化 NocDepartment 路由信息
func (s *NocDepartmentRouter) InitNocDepartmentRouter(Router *gin.RouterGroup) {
	ndRouter := Router.Group("nd").Use(middleware.OperationRecord())
	var ndApi = v1.ApiGroupApp.NocApiGroup.NocDepartmentApi
	{
		ndRouter.POST("createNocDepartment", ndApi.CreateNocDepartment)   // 新建NocDepartment
		ndRouter.DELETE("deleteNocDepartment", ndApi.DeleteNocDepartment) // 删除NocDepartment
		ndRouter.DELETE("deleteNocDepartmentByIds", ndApi.DeleteNocDepartmentByIds) // 批量删除NocDepartment
		ndRouter.PUT("updateNocDepartment", ndApi.UpdateNocDepartment)    // 更新NocDepartment
	}
}

func (s *NocDepartmentRouter) InitPubNocDepartmentRouter(Router *gin.RouterGroup) {
	ndRouterWithoutRecord := Router.Group("nd")
	var ndApi = v1.ApiGroupApp.NocApiGroup.NocDepartmentApi
	{
		ndRouterWithoutRecord.GET("findNocDepartment", ndApi.FindNocDepartment)        // 根据ID获取NocDepartment
		ndRouterWithoutRecord.GET("getNocDepartmentList", ndApi.GetNocDepartmentList)  // 获取NocDepartment列表
	}
}
