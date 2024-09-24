package yms

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
    "github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
    "github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/yms"
	ymsReq "github.com/flipped-aurora/gin-vue-admin/server/model/yms/request"
	"github.com/flipped-aurora/gin-vue-admin/server/service"
    "github.com/gin-gonic/gin"
    "go.uber.org/zap"
)

type YmsDomainGroupApi struct {
}

var ymsDomainGroupService = service.ServiceGroupApp.YmsDomainGroupService.YmsDomainGroupService


// CreateYmsDomainGroup 创建YmsDomainGroup
// @Tags YmsDomainGroup
// @Summary 创建YmsDomainGroup
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.YmsDomainGroup true "创建YmsDomainGroup"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /ymsDomainGroup/createYmsDomainGroup [post]
func (ymsDomainGroupApi *YmsDomainGroupApi) CreateYmsDomainGroup(c *gin.Context) {
	var ymsDomainGroup yms.YmsDomainGroup
	_ = c.ShouldBindJSON(&ymsDomainGroup)
	if err := ymsDomainGroupService.CreateYmsDomainGroup(ymsDomainGroup); err != nil {
        global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

// DeleteYmsDomainGroup 删除YmsDomainGroup
// @Tags YmsDomainGroup
// @Summary 删除YmsDomainGroup
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.YmsDomainGroup true "删除YmsDomainGroup"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /ymsDomainGroup/deleteYmsDomainGroup [delete]
func (ymsDomainGroupApi *YmsDomainGroupApi) DeleteYmsDomainGroup(c *gin.Context) {
	var ymsDomainGroup yms.YmsDomainGroup
	_ = c.ShouldBindJSON(&ymsDomainGroup)
	if err := ymsDomainGroupService.DeleteYmsDomainGroup(ymsDomainGroup); err != nil {
        global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

// DeleteYmsDomainGroupByIds 批量删除YmsDomainGroup
// @Tags YmsDomainGroup
// @Summary 批量删除YmsDomainGroup
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除YmsDomainGroup"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"批量删除成功"}"
// @Router /ymsDomainGroup/deleteYmsDomainGroupByIds [delete]
func (ymsDomainGroupApi *YmsDomainGroupApi) DeleteYmsDomainGroupByIds(c *gin.Context) {
	var IDS request.IdsReq
    _ = c.ShouldBindJSON(&IDS)
	if err := ymsDomainGroupService.DeleteYmsDomainGroupByIds(IDS); err != nil {
        global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
	} else {
		response.OkWithMessage("批量删除成功", c)
	}
}

// UpdateYmsDomainGroup 更新YmsDomainGroup
// @Tags YmsDomainGroup
// @Summary 更新YmsDomainGroup
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body autocode.YmsDomainGroup true "更新YmsDomainGroup"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /ymsDomainGroup/updateYmsDomainGroup [put]
func (ymsDomainGroupApi *YmsDomainGroupApi) UpdateYmsDomainGroup(c *gin.Context) {
	var ymsDomainGroup yms.YmsDomainGroup
	_ = c.ShouldBindJSON(&ymsDomainGroup)
	if err := ymsDomainGroupService.UpdateYmsDomainGroup(ymsDomainGroup); err != nil {
        global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}

// FindYmsDomainGroup 用id查询YmsDomainGroup
// @Tags YmsDomainGroup
// @Summary 用id查询YmsDomainGroup
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query autocode.YmsDomainGroup true "用id查询YmsDomainGroup"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /ymsDomainGroup/findYmsDomainGroup [get]
func (ymsDomainGroupApi *YmsDomainGroupApi) FindYmsDomainGroup(c *gin.Context) {
	var ymsDomainGroup yms.YmsDomainGroup
	_ = c.ShouldBindQuery(&ymsDomainGroup)
	if err, reymsDomainGroup := ymsDomainGroupService.GetYmsDomainGroup(ymsDomainGroup.Id); err != nil {
        global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"reymsDomainGroup": reymsDomainGroup}, c)
	}
}

// GetYmsDomainGroupList 分页获取YmsDomainGroup列表
// @Tags YmsDomainGroup
// @Summary 分页获取YmsDomainGroup列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query autocodeReq.YmsDomainGroupSearch true "分页获取YmsDomainGroup列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /ymsDomainGroup/getYmsDomainGroupList [get]
func (ymsDomainGroupApi *YmsDomainGroupApi) GetYmsDomainGroupList(c *gin.Context) {
	var pageInfo ymsReq.YmsDomainGroupSearch
	_ = c.ShouldBindQuery(&pageInfo)
	if err, list, total := ymsDomainGroupService.GetYmsDomainGroupInfoList(pageInfo); err != nil {
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
