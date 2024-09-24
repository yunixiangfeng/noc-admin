// 自动生成模板NocStatus
package noc

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

// NocStatus 结构体
// 如果含有time.Time 请自行import time包
type NocStatus struct {
      global.GVA_MODEL
      Id  *int `json:"id" form:"id" gorm:"column:id;comment:主键ID;size:10;"`
      Status  string `json:"status" form:"status" gorm:"column:status;comment:状态;size:10;"`
}


// TableName NocStatus 表名
func (NocStatus) TableName() string {
  return "noc_status"
}

