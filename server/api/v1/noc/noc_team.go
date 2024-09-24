package noc

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/noc"
	nocReq "github.com/flipped-aurora/gin-vue-admin/server/model/noc/request"
	"github.com/flipped-aurora/gin-vue-admin/server/service"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type NocTeamApi struct {
}

var ntService = service.ServiceGroupApp.NocServiceGroup.NocTeamService


// CreateNocTeam 创建NocTeam
// @Tags NocTeam
// @Summary 创建NocTeam
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.NocTeam true "创建NocTeam"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /nt/createNocTeam [post]
func (ntApi *NocTeamApi) CreateNocTeam(c *gin.Context) {
	var nt noc.NocTeam
	_ = c.ShouldBindJSON(&nt)
	if err := ntService.CreateNocTeam(nt); err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// DeleteNocTeam 删除NocTeam
// @Tags NocTeam
// @Summary 删除NocTeam
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.NocTeam true "删除NocTeam"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /nt/deleteNocTeam [delete]
func (ntApi *NocTeamApi) DeleteNocTeam(c *gin.Context) {
	var nt noc.NocTeam
	_ = c.ShouldBindJSON(&nt)
	if err := ntService.DeleteNocTeam(nt); err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// DeleteNocTeamByIds 批量删除NocTeam
// @Tags NocTeam
// @Summary 批量删除NocTeam
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除NocTeam"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /nt/deleteNocTeamByIds [delete]
func (ntApi *NocTeamApi) DeleteNocTeamByIds(c *gin.Context) {
	var IDS request.IdsReq
    _ = c.ShouldBindJSON(&IDS)
	if err := ntService.DeleteNocTeamByIds(IDS); err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// UpdateNocTeam 更新NocTeam
// @Tags NocTeam
// @Summary 更新NocTeam
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.NocTeam true "更新NocTeam"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /nt/updateNocTeam [put]
func (ntApi *NocTeamApi) UpdateNocTeam(c *gin.Context) {
	var nt noc.NocTeam
	_ = c.ShouldBindJSON(&nt)
	if err := ntService.UpdateNocTeam(nt); err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// FindNocTeam 用id查询NocTeam
// @Tags NocTeam
// @Summary 用id查询NocTeam
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query autocode.NocTeam true "用id查询NocTeam"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /nt/findNocTeam [get]
func (ntApi *NocTeamApi) FindNocTeam(c *gin.Context) {
	var nt noc.NocTeam
	_ = c.ShouldBindQuery(&nt)
	if err, rent := ntService.GetNocTeam(nt.ID); err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"rent": rent}, c)
	}
}

// GetNocTeamList 分页获取NocTeam列表
// @Tags NocTeam
// @Summary 分页获取NocTeam列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query autocodeReq.NocTeamSearch true "分页获取NocTeam列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /nt/getNocTeamList [get]
func (ntApi *NocTeamApi) GetNocTeamList(c *gin.Context) {
	var pageInfo nocReq.NocTeamSearch
	_ = c.ShouldBindQuery(&pageInfo)
	if err, list, total := ntService.GetNocTeamInfoList(pageInfo); err != nil {
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
