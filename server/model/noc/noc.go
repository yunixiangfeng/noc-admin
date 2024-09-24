// 自动生成模板SysDictionaryDetail
package noc

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)
type Noc struct {
	global.GVA_MODEL
	Serial_number  string `json:"serial_number" form:"serial_number" gorm:"column:serial_number;comment:故障编号;size:255;"`
	Title  string `json:"title" form:"title" gorm:"column:title;comment:故障标题;size:255;"`
	Priority_id  *int `json:"priority_id" form:"priority_id" gorm:"default:4;column:priority_id;comment:故障等级;size:4;"`
	Status_id  *int `json:"status_id" form:"status_id" gorm:"default:1;column:status_id;comment:故障状态;size:4;"`
	Responsible_dept_id  *int `json:"responsible_dept_id" form:"responsible_dept_id" gorm:"default:1;column:responsible_dept_id;comment:故障领域id;size:4;"`
	Responsible_team_id  *int `json:"responsible_team_id" form:"responsible_team_id" gorm:"default:1;column:responsible_team_id;comment:故障责任业务线id;size:4;"`
	Noc_reason_id  *int `json:"noc_reason_id" form:"noc_reason_id" gorm:"default:63;column:noc_reason_id;comment:故障二级原因;size:4;"`
	Direct_reason_id  *int `json:"direct_reason_id" form:"direct_reason_id" gorm:"default:9;column:direct_reason_id;comment:故障一级原因;size:4;"`
	Desc  string `json:"desc" form:"desc" gorm:"column:desc;comment:故障概述;"`
	Detail  string `json:"detail" form:"detail" gorm:"column:detail;comment:故障详细信息;"`
	Analysis  string `json:"analysis" form:"analysis" gorm:"column:analysis;comment:故障分析内容;"`
	Start_time  *time.Time `json:"start_time" form:"start_time" gorm:"column:start_time;comment:故障开始时间;"`
	Fixed_time  *time.Time `json:"fixed_time" form:"fixed_time" gorm:"column:fixed_time;comment:故障修复时间;"`
	Found_time  *time.Time `json:"found_time" form:"found_time" gorm:"column:found_time;comment:故障发现时间;"`
	Declarant_uid  *int `json:"declarant_uid" form:"declarant_uid" gorm:"column:declarant_uid;comment:故障申报人ID;"`
}



type NocList struct {
	global.GVA_MODEL
	Serial_number  string `json:"serial_number"`
	Title  string `json:"title"`
	Priority  string `json:"priority"`
	Status  string `json:"status"`
	Responsible_dept  string `json:"responsible_dept"`
}

// TableName Noc 表名
func (Noc) TableName() string {
	return "noc"
}
