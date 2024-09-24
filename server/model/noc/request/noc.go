// 自动生成模板SysDictionaryDetail
package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/noc"
)

// 如果含有time.Time 请自行import time包
type SearchNocParams struct {
	noc.Noc
	request.PageInfo
}
type NocList struct {
	request.PageInfo
}

