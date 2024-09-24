import service from '@/utils/request'

// @Tags YmsDomainGroup
// @Summary 创建YmsDomainGroup
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.YmsDomainGroup true "创建YmsDomainGroup"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /ymsDomainGroup/createYmsDomainGroup [post]
export const createYmsDomainGroup = (data) => {
  return service({
    url: '/ymsDomainGroup/createYmsDomainGroup',
    method: 'post',
    data
  })
}

// @Tags YmsDomainGroup
// @Summary 删除YmsDomainGroup
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.YmsDomainGroup true "删除YmsDomainGroup"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /ymsDomainGroup/deleteYmsDomainGroup [delete]
export const deleteYmsDomainGroup = (data) => {
  return service({
    url: '/ymsDomainGroup/deleteYmsDomainGroup',
    method: 'delete',
    data
  })
}

// @Tags YmsDomainGroup
// @Summary 删除YmsDomainGroup
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除YmsDomainGroup"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /ymsDomainGroup/deleteYmsDomainGroup [delete]
export const deleteYmsDomainGroupByIds = (data) => {
  return service({
    url: '/ymsDomainGroup/deleteYmsDomainGroupByIds',
    method: 'delete',
    data
  })
}

// @Tags YmsDomainGroup
// @Summary 更新YmsDomainGroup
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.YmsDomainGroup true "更新YmsDomainGroup"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /ymsDomainGroup/updateYmsDomainGroup [put]
export const updateYmsDomainGroup = (data) => {
  return service({
    url: '/ymsDomainGroup/updateYmsDomainGroup',
    method: 'put',
    data
  })
}

// @Tags YmsDomainGroup
// @Summary 用id查询YmsDomainGroup
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.YmsDomainGroup true "用id查询YmsDomainGroup"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /ymsDomainGroup/findYmsDomainGroup [get]
export const findYmsDomainGroup = (params) => {
  return service({
    url: '/ymsDomainGroup/findYmsDomainGroup',
    method: 'get',
    params
  })
}

// @Tags YmsDomainGroup
// @Summary 分页获取YmsDomainGroup列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取YmsDomainGroup列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /ymsDomainGroup/getYmsDomainGroupList [get]
export const getYmsDomainGroupList = (params) => {
  return service({
    url: '/ymsDomainGroup/getYmsDomainGroupList',
    method: 'get',
    params
  })
}
