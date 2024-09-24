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

type NocStatusApi struct {
}

var nsService = service.ServiceGroupApp.NocServiceGroup.NocStatusService


// CreateNocStatus 创建NocStatus
// @Tags NocStatus
// @Summary 创建NocStatus
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.NocStatus true "创建NocStatus"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /ns/createNocStatus [post]
func (nsApi *NocStatusApi) CreateNocStatus(c *gin.Context) {
	var ns noc.NocStatus
	_ = c.ShouldBindJSON(&ns)
	if err := nsService.CreateNocStatus(ns); err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// DeleteNocStatus 删除NocStatus
// @Tags NocStatus
// @Summary 删除NocStatus
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.NocStatus true "删除NocStatus"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /ns/deleteNocStatus [delete]
func (nsApi *NocStatusApi) DeleteNocStatus(c *gin.Context) {
	var ns noc.NocStatus
	_ = c.ShouldBindJSON(&ns)
	if err := nsService.DeleteNocStatus(ns); err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// DeleteNocStatusByIds 批量删除NocStatus
// @Tags NocStatus
// @Summary 批量删除NocStatus
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除NocStatus"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /ns/deleteNocStatusByIds [delete]
func (nsApi *NocStatusApi) DeleteNocStatusByIds(c *gin.Context) {
	var IDS request.IdsReq
    _ = c.ShouldBindJSON(&IDS)
	if err := nsService.DeleteNocStatusByIds(IDS); err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// UpdateNocStatus 更新NocStatus
// @Tags NocStatus
// @Summary 更新NocStatus
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.NocStatus true "更新NocStatus"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /ns/updateNocStatus [put]
func (nsApi *NocStatusApi) UpdateNocStatus(c *gin.Context) {
	var ns noc.NocStatus
	_ = c.ShouldBindJSON(&ns)
	if err := nsService.UpdateNocStatus(ns); err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// FindNocStatus 用id查询NocStatus
// @Tags NocStatus
// @Summary 用id查询NocStatus
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query autocode.NocStatus true "用id查询NocStatus"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /ns/findNocStatus [get]
func (nsApi *NocStatusApi) FindNocStatus(c *gin.Context) {
	var ns noc.NocStatus
	_ = c.ShouldBindQuery(&ns)
	if err, rens := nsService.GetNocStatus(ns.ID); err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"rens": rens}, c)
	}
}

// GetNocStatusList 分页获取NocStatus列表
// @Tags NocStatus
// @Summary 分页获取NocStatus列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query autocodeReq.NocStatusSearch true "分页获取NocStatus列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /ns/getNocStatusList [get]
func (nsApi *NocStatusApi) GetNocStatusList(c *gin.Context) {
	var pageInfo request.PageInfo
	_ = c.ShouldBindQuery(&pageInfo)
	if err, list, total := nsService.GetNocStatusInfoList(pageInfo); err != nil {
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
