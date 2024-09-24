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

type NocDirectReasonsApi struct {
}

var ndrService = service.ServiceGroupApp.NocServiceGroup.NocDirectReasonsService


// CreateNocDirectReasons 创建NocDirectReasons
// @Tags NocDirectReasons
// @Summary 创建NocDirectReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.NocDirectReasons true "创建NocDirectReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /ndr/createNocDirectReasons [post]
func (ndrApi *NocDirectReasonsApi) CreateNocDirectReasons(c *gin.Context) {
	var ndr noc.NocDirectReasons
	_ = c.ShouldBindJSON(&ndr)
	if err := ndrService.CreateNocDirectReasons(ndr); err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// DeleteNocDirectReasons 删除NocDirectReasons
// @Tags NocDirectReasons
// @Summary 删除NocDirectReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.NocDirectReasons true "删除NocDirectReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /ndr/deleteNocDirectReasons [delete]
func (ndrApi *NocDirectReasonsApi) DeleteNocDirectReasons(c *gin.Context) {
	var ndr noc.NocDirectReasons
	_ = c.ShouldBindJSON(&ndr)
	if err := ndrService.DeleteNocDirectReasons(ndr); err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// DeleteNocDirectReasonsByIds 批量删除NocDirectReasons
// @Tags NocDirectReasons
// @Summary 批量删除NocDirectReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除NocDirectReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /ndr/deleteNocDirectReasonsByIds [delete]
func (ndrApi *NocDirectReasonsApi) DeleteNocDirectReasonsByIds(c *gin.Context) {
	var IDS request.IdsReq
    _ = c.ShouldBindJSON(&IDS)
	if err := ndrService.DeleteNocDirectReasonsByIds(IDS); err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// UpdateNocDirectReasons 更新NocDirectReasons
// @Tags NocDirectReasons
// @Summary 更新NocDirectReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.NocDirectReasons true "更新NocDirectReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /ndr/updateNocDirectReasons [put]
func (ndrApi *NocDirectReasonsApi) UpdateNocDirectReasons(c *gin.Context) {
	var ndr noc.NocDirectReasons
	_ = c.ShouldBindJSON(&ndr)
	if err := ndrService.UpdateNocDirectReasons(ndr); err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// FindNocDirectReasons 用id查询NocDirectReasons
// @Tags NocDirectReasons
// @Summary 用id查询NocDirectReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query autocode.NocDirectReasons true "用id查询NocDirectReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /ndr/findNocDirectReasons [get]
func (ndrApi *NocDirectReasonsApi) FindNocDirectReasons(c *gin.Context) {
	var ndr noc.NocDirectReasons
	_ = c.ShouldBindQuery(&ndr)
	if err, rendr := ndrService.GetNocDirectReasons(ndr.ID); err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"rendr": rendr}, c)
	}
}

// GetNocDirectReasonsList 分页获取NocDirectReasons列表
// @Tags NocDirectReasons
// @Summary 分页获取NocDirectReasons列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query autocodeReq.NocDirectReasonsSearch true "分页获取NocDirectReasons列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /ndr/getNocDirectReasonsList [get]
func (ndrApi *NocDirectReasonsApi) GetNocDirectReasonsList(c *gin.Context) {
	var pageInfo request.PageInfo
	_ = c.ShouldBindQuery(&pageInfo)
	if err, list, total := ndrService.GetNocDirectReasonsInfoList(pageInfo); err != nil {
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
