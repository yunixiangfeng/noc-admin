import service from '@/utils/request'

// @Tags NocDepartment
// @Summary 创建NocDepartment
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocDepartment true "创建NocDepartment"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /nd/createNocDepartment [post]
export const createNocDepartment = (data) => {
  return service({
    url: '/nd/createNocDepartment',
    method: 'post',
    data
  })
}

// @Tags NocDepartment
// @Summary 删除NocDepartment
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocDepartment true "删除NocDepartment"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /nd/deleteNocDepartment [delete]
export const deleteNocDepartment = (data) => {
  return service({
    url: '/nd/deleteNocDepartment',
    method: 'delete',
    data
  })
}

// @Tags NocDepartment
// @Summary 删除NocDepartment
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除NocDepartment"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /nd/deleteNocDepartment [delete]
export const deleteNocDepartmentByIds = (data) => {
  return service({
    url: '/nd/deleteNocDepartmentByIds',
    method: 'delete',
    data
  })
}

// @Tags NocDepartment
// @Summary 更新NocDepartment
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocDepartment true "更新NocDepartment"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /nd/updateNocDepartment [put]
export const updateNocDepartment = (data) => {
  return service({
    url: '/nd/updateNocDepartment',
    method: 'put',
    data
  })
}

// @Tags NocDepartment
// @Summary 用id查询NocDepartment
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.NocDepartment true "用id查询NocDepartment"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /nd/findNocDepartment [get]
export const findNocDepartment = (params) => {
  return service({
    url: '/nd/findNocDepartment',
    method: 'get',
    params
  })
}

// @Tags NocDepartment
// @Summary 分页获取NocDepartment列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取NocDepartment列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /nd/getNocDepartmentList [get]
export const getNocDepartmentList = (params) => {
  return service({
    url: '/nd/getNocDepartmentList',
    method: 'get',
    params
  })
}
