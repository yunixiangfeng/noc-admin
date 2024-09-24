import service from '@/utils/request'

// @Tags NocStatus
// @Summary 创建NocStatus
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocStatus true "创建NocStatus"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /ns/createNocStatus [post]
export const createNocStatus = (data) => {
  return service({
    url: '/ns/createNocStatus',
    method: 'post',
    data
  })
}

// @Tags NocStatus
// @Summary 删除NocStatus
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocStatus true "删除NocStatus"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /ns/deleteNocStatus [delete]
export const deleteNocStatus = (data) => {
  return service({
    url: '/ns/deleteNocStatus',
    method: 'delete',
    data
  })
}

// @Tags NocStatus
// @Summary 删除NocStatus
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除NocStatus"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /ns/deleteNocStatus [delete]
export const deleteNocStatusByIds = (data) => {
  return service({
    url: '/ns/deleteNocStatusByIds',
    method: 'delete',
    data
  })
}

// @Tags NocStatus
// @Summary 更新NocStatus
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocStatus true "更新NocStatus"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /ns/updateNocStatus [put]
export const updateNocStatus = (data) => {
  return service({
    url: '/ns/updateNocStatus',
    method: 'put',
    data
  })
}

// @Tags NocStatus
// @Summary 用id查询NocStatus
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.NocStatus true "用id查询NocStatus"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /ns/findNocStatus [get]
export const findNocStatus = (params) => {
  return service({
    url: '/ns/findNocStatus',
    method: 'get',
    params
  })
}

// @Tags NocStatus
// @Summary 分页获取NocStatus列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取NocStatus列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /ns/getNocStatusList [get]
export const getNocStatusList = (params) => {
  return service({
    url: '/ns/getNocStatusList',
    method: 'get',
    params
  })
}
