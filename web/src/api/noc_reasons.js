import service from '@/utils/request'

// @Tags NocReasons
// @Summary 创建NocReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocReasons true "创建NocReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /ns/createNocReasons [post]
export const createNocReasons = (data) => {
  return service({
    url: '/nr/createNocReasons',
    method: 'post',
    data
  })
}

// @Tags NocReasons
// @Summary 删除NocReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocReasons true "删除NocReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /ns/deleteNocReasons [delete]
export const deleteNocReasons = (data) => {
  return service({
    url: '/nr/deleteNocReasons',
    method: 'delete',
    data
  })
}

// @Tags NocReasons
// @Summary 删除NocReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除NocReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /ns/deleteNocReasons [delete]
export const deleteNocReasonsByIds = (data) => {
  return service({
    url: '/ns/deleteNocReasonsByIds',
    method: 'delete',
    data
  })
}

// @Tags NocReasons
// @Summary 更新NocReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocReasons true "更新NocReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /ns/updateNocReasons [put]
export const updateNocReasons = (data) => {
  return service({
    url: '/nr/updateNocReasons',
    method: 'put',
    data
  })
}

// @Tags NocReasons
// @Summary 用id查询NocReasons
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.NocReasons true "用id查询NocReasons"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /ns/findNocReasons [get]
export const findNocReasons = (params) => {
  return service({
    url: '/nr/findNocReasons',
    method: 'get',
    params
  })
}

// @Tags NocReasons
// @Summary 分页获取NocReasons列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取NocReasons列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /ns/getNocReasonsList [get]
export const getNocReasonsList = (params) => {
  return service({
    url: '/nr/getNocReasonsList',
    method: 'get',
    params
  })
}
