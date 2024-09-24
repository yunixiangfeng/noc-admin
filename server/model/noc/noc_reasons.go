// 自动生成模板NocReasons
package noc

// NocReasons 结构体
// 如果含有time.Time 请自行import time包
type NocReasons struct {
      ID  uint `json:"id" form:"id" gorm:"column:id;comment:主键id;size:10;"`
      Name  string `json:"name" form:"name" gorm:"column:name;comment:原因名称;size:10;"`
      Treecode  string `json:"treecode" form:"treecode" gorm:"column:treecode;comment:code树;size:10;"`
      Parent_id  string `json:"parent_id" form:"parent_id" gorm:"column:parent_id;comment:父ID;size:10;"`
}


// TableName NocReasons 表名
func (NocReasons) TableName() string {
  return "noc_reasons"
}

