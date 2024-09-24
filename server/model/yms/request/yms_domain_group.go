package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/yms"
)

type YmsDomainGroupSearch struct{
    yms.YmsDomainGroup
    request.PageInfo
}