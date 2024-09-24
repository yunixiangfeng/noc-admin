package service

import (
	"github.com/flipped-aurora/gin-vue-admin/server/service/autocode"
	"github.com/flipped-aurora/gin-vue-admin/server/service/example"
	"github.com/flipped-aurora/gin-vue-admin/server/service/noc"
	"github.com/flipped-aurora/gin-vue-admin/server/service/system"
	"github.com/flipped-aurora/gin-vue-admin/server/service/yms"
)

type ServiceGroup struct {
	SystemServiceGroup   system.ServiceGroup
	ExampleServiceGroup  example.ServiceGroup
	AutoCodeServiceGroup autocode.ServiceGroup
	NocServiceGroup noc.ServiceGroup
	YmsDomainGroupService yms.ServiceGroup
}

var ServiceGroupApp = new(ServiceGroup)
