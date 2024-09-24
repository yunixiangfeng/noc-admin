package v1

import (
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1/autocode"
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1/example"
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1/noc"
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1/system"
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1/yms"
)

type ApiGroup struct {
	SystemApiGroup   system.ApiGroup
	ExampleApiGroup  example.ApiGroup
	AutoCodeApiGroup autocode.ApiGroup
	NocApiGroup noc.ApiGroup
	YmsApiGroup yms.ApiGroup
}

var ApiGroupApp = new(ApiGroup)
