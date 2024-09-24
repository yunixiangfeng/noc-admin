import service from '@/utils/request'

// @Tags NocDirectReasons
// @Summary 创建NocDirectReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocDirectReasons true "创建NocDirectReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /ndr/createNocDirectReasons [post]
export const createNocDirectReasons = (data) => {
  return service({
    url: '/ndr/createNocDirectReasons',
    method: 'post',
    data
  })
}

// @Tags NocDirectReasons
// @Summary 删除NocDirectReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocDirectReasons true "删除NocDirectReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /ndr/deleteNocDirectReasons [delete]
export const deleteNocDirectReasons = (data) => {
  return service({
    url: '/ndr/deleteNocDirectReasons',
    method: 'delete',
    data
  })
}

// @Tags NocDirectReasons
// @Summary 删除NocDirectReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除NocDirectReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /ndr/deleteNocDirectReasons [delete]
export const deleteNocDirectReasonsByIds = (data) => {
  return service({
    url: '/ndr/deleteNocDirectReasonsByIds',
    method: 'delete',
    data
  })
}

// @Tags NocDirectReasons
// @Summary 更新NocDirectReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocDirectReasons true "更新NocDirectReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /ndr/updateNocDirectReasons [put]
export const updateNocDirectReasons = (data) => {
  return service({
    url: '/ndr/updateNocDirectReasons',
    method: 'put',
    data
  })
}

// @Tags NocDirectReasons
// @Summary 用id查询NocDirectReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.NocDirectReasons true "用id查询NocDirectReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /ndr/findNocDirectReasons [get]
export const findNocDirectReasons = (params) => {
  return service({
    url: '/ndr/findNocDirectReasons',
    method: 'get',
    params
  })
}

// @Tags NocDirectReasons
// @Summary 分页获取NocDirectReasons列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取NocDirectReasons列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /ndr/getNocDirectReasonsList [get]
export const getNocDirectReasonsList = (params) => {
  return service({
    url: '/ndr/getNocDirectReasonsList',
    method: 'get',
    params
  })
}
