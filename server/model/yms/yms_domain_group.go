// 自动生成模板YmsDomainGroup
package yms

// YmsDomainGroup 结构体
// 如果含有time.Time 请自行import time包
type YmsDomainGroup struct {
      CreateTime  *int `json:"createTime" form:"createTime" gorm:"column:create_time;comment:;size:19;"`
      DataCenterId  *int `json:"dataCenterId" form:"dataCenterId" gorm:"column:data_center_id;comment:;size:19;"`
      DomainCode  string `json:"domainCode" form:"domainCode" gorm:"column:domain_code;comment:领域编码;size:200;"`
      DomainDesc  string `json:"domainDesc" form:"domainDesc" gorm:"column:domain_desc;comment:领域描述;size:500;"`
      DomainName  string `json:"domainName" form:"domainName" gorm:"column:domain_name;comment:领域名称;size:200;"`
      DomainPrincipal  string `json:"domainPrincipal" form:"domainPrincipal" gorm:"column:domain_principal;comment:领域负责人;size:128;"`
      Dr  *bool `json:"dr" form:"dr" gorm:"column:dr;comment:逻辑删除;"`
      IsExclusive  *bool `json:"isExclusive" form:"isExclusive" gorm:"column:is_exclusive;comment:是否专属化;"`
      ParentDomainId  string `json:"parentDomainId" form:"parentDomainId" gorm:"column:parent_domain_id;comment:父领域ID，根节点不需要填充值;size:50;"`
      Path  string `json:"path" form:"path" gorm:"column:path;comment:路径;size:255;"`
      SortIndex  *int `json:"sortIndex" form:"sortIndex" gorm:"column:sort_index;comment:排序;size:10;"`
      UpdateTime  *int `json:"updateTime" form:"updateTime" gorm:"column:update_time;comment:;size:19;"`
      Id  string `json:"id" form:"id" gorm:"column:id;comment:主键ID;size:50;"`
}


// TableName YmsDomainGroup 表名
func (YmsDomainGroup) TableName() string {
  return "yms_domain_group"
}

