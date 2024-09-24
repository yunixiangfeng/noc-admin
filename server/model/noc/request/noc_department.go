package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/noc"
)

type NocDepartmentSearch struct{
    noc.NocDepartment
    request.PageInfo
}