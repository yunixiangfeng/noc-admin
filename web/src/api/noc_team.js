import service from '@/utils/request'

// @Tags NocTeam
// @Summary 创建NocTeam
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocTeam true "创建NocTeam"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /nt/createNocTeam [post]
export const createNocTeam = (data) => {
  return service({
    url: '/nt/createNocTeam',
    method: 'post',
    data
  })
}

// @Tags NocTeam
// @Summary 删除NocTeam
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocTeam true "删除NocTeam"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /nt/deleteNocTeam [delete]
export const deleteNocTeam = (data) => {
  return service({
    url: '/nt/deleteNocTeam',
    method: 'delete',
    data
  })
}

// @Tags NocTeam
// @Summary 删除NocTeam
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.IdsReq true "批量删除NocTeam"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"删除成功"}"
// @Router /nt/deleteNocTeam [delete]
export const deleteNocTeamByIds = (data) => {
  return service({
    url: '/nt/deleteNocTeamByIds',
    method: 'delete',
    data
  })
}

// @Tags NocTeam
// @Summary 更新NocTeam
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body model.NocTeam true "更新NocTeam"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"更新成功"}"
// @Router /nt/updateNocTeam [put]
export const updateNocTeam = (data) => {
  return service({
    url: '/nt/updateNocTeam',
    method: 'put',
    data
  })
}

// @Tags NocTeam
// @Summary 用id查询NocTeam
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query model.NocTeam true "用id查询NocTeam"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"查询成功"}"
// @Router /nt/findNocTeam [get]
export const findNocTeam = (params) => {
  return service({
    url: '/nt/findNocTeam',
    method: 'get',
    params
  })
}

// @Tags NocTeam
// @Summary 分页获取NocTeam列表
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data query request.PageInfo true "分页获取NocTeam列表"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /nt/getNocTeamList [get]
export const getNocTeamList = (params) => {
  return service({
    url: '/nt/getNocTeamList',
    method: 'get',
    params
  })
}
