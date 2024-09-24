// 自动生成模板NocDepartment
package noc

// NocDepartment 结构体
// 如果含有time.Time 请自行import time包
type NocDepartment struct {
      ID   uint `json:"id" form:"id" gorm:"column:id;comment:主键ID;size:10;"`
      Dept_name  string `json:"dept_name" form:"dept_name" gorm:"column:dept_name;comment:领域名称;size:100;"`
      Director  string `json:"director" form:"director" gorm:"column:director;comment:领域负责人;size:100;"`
}


// TableName NocDepartment 表名
func (NocDepartment) TableName() string {
  return "noc_department"
}

