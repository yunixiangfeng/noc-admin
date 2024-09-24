package noc

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
    "github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
    "github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/noc"
	"github.com/flipped-aurora/gin-vue-admin/server/service"
    "github.com/gin-gonic/gin"
	nocReq "github.com/flipped-aurora/gin-vue-admin/server/model/noc/request"
    "go.uber.org/zap"
)

type NocReasonsApi struct {
}

var nrService = service.ServiceGroupApp.NocServiceGroup.NocReasonsService


// CreateNocReasons 创建NocReasons
// @Tags NocReasons
// @Summary 创建NocReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.NocReasons true "创建NocReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /ns/createNocReasons [post]
func (nsApi *NocReasonsApi) CreateNocReasons(c *gin.Context) {
	var ns noc.NocReasons
	_ = c.ShouldBindJSON(&ns)
	if err := nrService.CreateNocReasons(ns); err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// DeleteNocReasons 删除NocReasons
// @Tags NocReasons
// @Summary 删除NocReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.NocReasons true "删除NocReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /ns/deleteNocReasons [delete]
func (nsApi *NocReasonsApi) DeleteNocReasons(c *gin.Context) {
	var ns noc.NocReasons
	_ = c.ShouldBindJSON(&ns)
	if err := nrService.DeleteNocReasons(ns); err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// DeleteNocReasonsByIds 批量删除NocReasons
// @Tags NocReasons
// @Summary 批量删除NocReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除NocReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /ns/deleteNocReasonsByIds [delete]
func (nsApi *NocReasonsApi) DeleteNocReasonsByIds(c *gin.Context) {
	var IDS request.IdsReq
    _ = c.ShouldBindJSON(&IDS)
	if err := nrService.DeleteNocReasonsByIds(IDS); err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// UpdateNocReasons 更新NocReasons
// @Tags NocReasons
// @Summary 更新NocReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.NocReasons true "更新NocReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /ns/updateNocReasons [put]
func (nsApi *NocReasonsApi) UpdateNocReasons(c *gin.Context) {
	var ns noc.NocReasons
	_ = c.ShouldBindJSON(&ns)
	if err := nrService.UpdateNocReasons(ns); err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// FindNocReasons 用id查询NocReasons
// @Tags NocReasons
// @Summary 用id查询NocReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query autocode.NocReasons true "用id查询NocReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /ns/findNocReasons [get]
func (nsApi *NocReasonsApi) FindNocReasons(c *gin.Context) {
	var ns noc.NocReasons
	_ = c.ShouldBindQuery(&ns)
	if err, rens := nrService.GetNocReasons(ns.ID); err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"rens": rens}, c)
	}
}

// GetNocReasonsList 分页获取NocReasons列表
// @Tags NocReasons
// @Summary 分页获取NocReasons列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query autocodeReq.NocReasonsSearch true "分页获取NocReasons列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /ns/getNocReasonsList [get]
func (nsApi *NocReasonsApi) GetNocReasonsList(c *gin.Context) {
	var pageInfo nocReq.NocReasonsSearch
	_ = c.ShouldBindQuery(&pageInfo)
	if err, list, total := nrService.GetNocReasonsInfoList(pageInfo); err != nil {
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
