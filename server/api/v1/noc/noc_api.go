package noc

import (
	"fmt"
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/noc"
	nocReq "github.com/flipped-aurora/gin-vue-admin/server/model/noc/request"
	"github.com/flipped-aurora/gin-vue-admin/server/utils"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type NocApi struct{}




func (n *NocApi) GetNocList(c *gin.Context) {
	var pageInfo request.PageInfo
	fmt.Println(pageInfo)
	_ = c.ShouldBindQuery(&pageInfo)
	if err := utils.Verify(pageInfo, utils.PageInfoVerify); err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	if err, list, total := nocService.GetNocList(pageInfo); err != nil {
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

func (n *NocApi)  GetNocDetailById(c *gin.Context) {
	var SearchNocParams nocReq.SearchNocParams
	fmt.Println(SearchNocParams.ID)
	_ = c.ShouldBindQuery(&SearchNocParams)
	if err, renoc := nocService.GetNocDetailById(SearchNocParams.ID); err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"noc_detail": renoc}, c)
	}
}

func (n *NocApi)  GetNocById(c *gin.Context) {
	var SearchNocParams nocReq.SearchNocParams
	fmt.Println(SearchNocParams.ID)
	_ = c.ShouldBindQuery(&SearchNocParams)
	if err, renoc := nocService.GetNocById(SearchNocParams.ID); err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
	} else {
		response.OkWithData(gin.H{"noc_data": renoc}, c)
	}
}

func (n *NocApi)  DeleteNocById(c *gin.Context) {
	var SearchNocParams nocReq.SearchNocParams
	fmt.Println(SearchNocParams.ID)
	_ = c.ShouldBindJSON(&SearchNocParams)
	if err := nocService.DeleteNocById(SearchNocParams.ID); err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}

func (n *NocApi) CreateNoc(c *gin.Context) {
	var nocData noc.Noc
	_ = c.ShouldBindJSON(&nocData)
	if err := nocService.CreateNoc(nocData); err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
	} else {
		response.OkWithMessage("创建成功", c)
	}
}

func (n *NocApi) UpdateNocById(c *gin.Context) {
	var nocData noc.Noc
	_ = c.ShouldBindJSON(&nocData)
	if err := nocService.UpdateNocById(nocData.ID, nocData); err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithMessage("更新成功", c)
	}
}