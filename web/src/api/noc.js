import service from '@/utils/request'

export const createNoc = (data) => {
  return service({
    url: '/noc/createNoc',
    method: 'post',
    data
  })
}

export const deleteNocById = (data) => {
  return service({
    url: '/noc/deleteNocById',
    method: 'delete',
    data
  })
}

export const updateNocById = (data) => {
  return service({
    url: '/noc/updateNocById',
    method: 'put',
    data
  })
}

export const getNocDetailById = (params) => {
  return service({
    url: '/noc/getNocDetailById',
    method: 'get',
    params
  })
}

export const getNocById = (params) => {
  return service({
    url: '/noc/getNocById',
    method: 'get',
    params
  })
}

export const getNocList = (params) => {
  return service({
    url: '/noc/getNocList',
    method: 'get',
    params
  })
}
