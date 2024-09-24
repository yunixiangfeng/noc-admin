package noc

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
    "github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
    "github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/noc"
	"github.com/flipped-aurora/gin-vue-admin/server/service"
    "github.com/gin-gonic/gin"
    "go.uber.org/zap"
)

type NocPriorityApi struct {
}

var NPService = service.ServiceGroupApp.NocServiceGroup.NocPriorityService


// CreateNocPriority 创建NocPriority
// @Tags NocPriority
// @Summary 创建NocPriority
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.NocPriority true "创建NocPriority"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /NP/createNocPriority [post]
func (NPApi *NocPriorityApi) CreateNocPriority(c *gin.Context) {
	var NP noc.NocPriority
	_ = c.ShouldBindJSON(&NP)
	if err := NPService.CreateNocPriority(NP); err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// DeleteNocPriority 删除NocPriority
// @Tags NocPriority
// @Summary 删除NocPriority
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.NocPriority true "删除NocPriority"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /NP/deleteNocPriority [delete]
func (NPApi *NocPriorityApi) DeleteNocPriority(c *gin.Context) {
	var NP noc.NocPriority
	_ = c.ShouldBindJSON(&NP)
	if err := NPService.DeleteNocPriority(NP); err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// DeleteNocPriorityByIds 批量删除NocPriority
// @Tags NocPriority
// @Summary 批量删除NocPriority
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除NocPriority"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /NP/deleteNocPriorityByIds [delete]
func (NPApi *NocPriorityApi) DeleteNocPriorityByIds(c *gin.Context) {
	var IDS request.IdsReq
    _ = c.ShouldBindJSON(&IDS)
	if err := NPService.DeleteNocPriorityByIds(IDS); err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// UpdateNocPriority 更新NocPriority
// @Tags NocPriority
// @Summary 更新NocPriority
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.NocPriority true "更新NocPriority"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /NP/updateNocPriority [put]
func (NPApi *NocPriorityApi) UpdateNocPriority(c *gin.Context) {
	var NP noc.NocPriority
	_ = c.ShouldBindJSON(&NP)
	if err := NPService.UpdateNocPriority(NP); err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// FindNocPriority 用id查询NocPriority
// @Tags NocPriority
// @Summary 用id查询NocPriority
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query autocode.NocPriority true "用id查询NocPriority"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /NP/findNocPriority [get]
func (NPApi *NocPriorityApi) FindNocPriority(c *gin.Context) {
	var NP noc.NocPriority
	_ = c.ShouldBindQuery(&NP)
	if err, reNP := NPService.GetNocPriority(NP.ID); err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"reNP": reNP}, c)
	}
}

// GetNocPriorityList 分页获取NocPriority列表
// @Tags NocPriority
// @Summary 分页获取NocPriority列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query autocodeReq.NocPrioritySearch true "分页获取NocPriority列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /NP/getNocPriorityList [get]
func (NPApi *NocPriorityApi) GetNocPriorityList(c *gin.Context) {
	var pageInfo request.PageInfo
	_ = c.ShouldBindQuery(&pageInfo)
	if err, list, total := NPService.GetNocPriorityInfoList(pageInfo); err != nil {
	    global.GVA_LOG.Error("获取失败!", zap.Error(err))
        response.FailWithMessage("获取失败", c)
    } else {
        response.OkWithDetailed(response.PageResult{
            List:     list,
            Total:    total,
            Page:     pageInfo.Page,
            PageSize: pageInfo.PageSize,
        }, "获取成功", c)
    }
}
