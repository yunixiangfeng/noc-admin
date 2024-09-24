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

type NocDepartmentApi struct {
}

var ndService = service.ServiceGroupApp.NocServiceGroup.NocDepartmentService


// CreateNocDepartment 创建NocDepartment
// @Tags NocDepartment
// @Summary 创建NocDepartment
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body noc.NocDepartment true "创建NocDepartment"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /nd/createNocDepartment [post]
func (ndApi *NocDepartmentApi) CreateNocDepartment(c *gin.Context) {
	var nd noc.NocDepartment
	_ = c.ShouldBindJSON(&nd)
	if err := ndService.CreateNocDepartment(nd); err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// DeleteNocDepartment 删除NocDepartment
// @Tags NocDepartment
// @Summary 删除NocDepartment
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body noc.NocDepartment true "删除NocDepartment"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /nd/deleteNocDepartment [delete]
func (ndApi *NocDepartmentApi) DeleteNocDepartment(c *gin.Context) {
	var nd noc.NocDepartment
	_ = c.ShouldBindJSON(&nd)
	if err := ndService.DeleteNocDepartment(nd); err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// DeleteNocDepartmentByIds 批量删除NocDepartment
// @Tags NocDepartment
// @Summary 批量删除NocDepartment
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除NocDepartment"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /nd/deleteNocDepartmentByIds [delete]
func (ndApi *NocDepartmentApi) DeleteNocDepartmentByIds(c *gin.Context) {
	var IDS request.IdsReq
    _ = c.ShouldBindJSON(&IDS)
	if err := ndService.DeleteNocDepartmentByIds(IDS); err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// UpdateNocDepartment 更新NocDepartment
// @Tags NocDepartment
// @Summary 更新NocDepartment
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body noc.NocDepartment true "更新NocDepartment"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /nd/updateNocDepartment [put]
func (ndApi *NocDepartmentApi) UpdateNocDepartment(c *gin.Context) {
	var nd noc.NocDepartment
	_ = c.ShouldBindJSON(&nd)
	if err := ndService.UpdateNocDepartment(nd); err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// FindNocDepartment 用id查询NocDepartment
// @Tags NocDepartment
// @Summary 用id查询NocDepartment
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query noc.NocDepartment true "用id查询NocDepartment"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /nd/findNocDepartment [get]
func (ndApi *NocDepartmentApi) FindNocDepartment(c *gin.Context) {
	var nd noc.NocDepartment
	_ = c.ShouldBindQuery(&nd)
	if err, rend := ndService.GetNocDepartment(nd.ID); err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"rend": rend}, c)
	}
}

// GetNocDepartmentList 分页获取NocDepartment列表
// @Tags NocDepartment
// @Summary 分页获取NocDepartment列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query nocReq.NocDepartmentSearch true "分页获取NocDepartment列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /nd/getNocDepartmentList [get]
func (ndApi *NocDepartmentApi) GetNocDepartmentList(c *gin.Context) {
	var pageInfo request.PageInfo
	_ = c.ShouldBindQuery(&pageInfo)
	if err, list, total := ndService.GetNocDepartmentInfoList(pageInfo); err != nil {
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
