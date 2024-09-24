// 自动生成模板NocTeam
package noc

// NocTeam 结构体
// 如果含有time.Time 请自行import time包
type NocTeam struct {
      ID  uint `json:"id" form:"id" gorm:"column:id;comment:主键ID;size:10;"`
      Leader  string `json:"leader" form:"leader" gorm:"column:leader;comment:业务线team leader;size:100;"`
      Responsible_dept_id  string `json:"responsible_dept_id" form:"responsible_dept_id" gorm:"column:responsible_dept_id;comment:领域id;size:4;"`
      Team_name  string `json:"team_name" form:"team_name" gorm:"column:team_name;comment:业务线名称;size:100;"`

}


// TableName NocTeam 表名
func (NocTeam) TableName() string {
  return "noc_team"
}

