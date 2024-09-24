import service from '@/utils/request'

// @Tags NocPriority
// @Summary 创建NocPriority
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocPriority true "创建NocPriority"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /NP/createNocPriority [post]
export const createNocPriority = (data) => {
  return service({
    url: '/NP/createNocPriority',
    method: 'post',
    data
  })
}

// @Tags NocPriority
// @Summary 删除NocPriority
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocPriority true "删除NocPriority"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /NP/deleteNocPriority [delete]
export const deleteNocPriority = (data) => {
  return service({
    url: '/NP/deleteNocPriority',
    method: 'delete',
    data
  })
}

// @Tags NocPriority
// @Summary 删除NocPriority
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除NocPriority"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /NP/deleteNocPriority [delete]
export const deleteNocPriorityByIds = (data) => {
  return service({
    url: '/NP/deleteNocPriorityByIds',
    method: 'delete',
    data
  })
}

// @Tags NocPriority
// @Summary 更新NocPriority
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocPriority true "更新NocPriority"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /NP/updateNocPriority [put]
export const updateNocPriority = (data) => {
  return service({
    url: '/NP/updateNocPriority',
    method: 'put',
    data
  })
}

// @Tags NocPriority
// @Summary 用id查询NocPriority
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.NocPriority true "用id查询NocPriority"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /NP/findNocPriority [get]
export const findNocPriority = (params) => {
  return service({
    url: '/NP/findNocPriority',
    method: 'get',
    params
  })
}

// @Tags NocPriority
// @Summary 分页获取NocPriority列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取NocPriority列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /NP/getNocPriorityList [get]
export const getNocPriorityList = (params) => {
  return service({
    url: '/NP/getNocPriorityList',
    method: 'get',
    params
  })
}
