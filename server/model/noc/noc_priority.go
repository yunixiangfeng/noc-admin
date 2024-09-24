// 自动生成模板NocPriority
package noc

// NocPriority 结构体
// 如果含有time.Time 请自行import time包
type NocPriority struct {
      ID  uint `json:"id" form:"id" gorm:"column:id;comment:;size:4;"`
      Priority  string `json:"priority" form:"priority" gorm:"column:priority;comment:故障等级;size:10;"`
}


// TableName NocPriority 表名
func (NocPriority) TableName() string {
  return "noc_priority"
}

