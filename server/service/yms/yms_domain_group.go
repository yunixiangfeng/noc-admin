package yms

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/yms"
	ymsReq "github.com/flipped-aurora/gin-vue-admin/server/model/yms/request"
)

type YmsDomainGroupService struct {
}

// CreateYmsDomainGroup 创建YmsDomainGroup记录
// Author [piexlmax](https://github.com/piexlmax)
func (ymsDomainGroupService *YmsDomainGroupService) CreateYmsDomainGroup(ymsDomainGroup yms.YmsDomainGroup) (err error) {
	err = global.GVA_DB.Create(&ymsDomainGroup).Error
	return err
}

// DeleteYmsDomainGroup 删除YmsDomainGroup记录
// Author [piexlmax](https://github.com/piexlmax)
func (ymsDomainGroupService *YmsDomainGroupService)DeleteYmsDomainGroup(ymsDomainGroup yms.YmsDomainGroup) (err error) {
	err = global.GVA_DB.Delete(&ymsDomainGroup).Error
	return err
}

// DeleteYmsDomainGroupByIds 批量删除YmsDomainGroup记录
// Author [piexlmax](https://github.com/piexlmax)
func (ymsDomainGroupService *YmsDomainGroupService)DeleteYmsDomainGroupByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]yms.YmsDomainGroup{},"id in ?",ids.Ids).Error
	return err
}

// UpdateYmsDomainGroup 更新YmsDomainGroup记录
// Author [piexlmax](https://github.com/piexlmax)
func (ymsDomainGroupService *YmsDomainGroupService)UpdateYmsDomainGroup(ymsDomainGroup yms.YmsDomainGroup) (err error) {
	err = global.GVA_DB.Save(&ymsDomainGroup).Error
	return err
}

// GetYmsDomainGroup 根据id获取YmsDomainGroup记录
// Author [piexlmax](https://github.com/piexlmax)
func (ymsDomainGroupService *YmsDomainGroupService)GetYmsDomainGroup(id string) (err error, ymsDomainGroup yms.YmsDomainGroup) {
	err = global.GVA_DB.Where("id = ?", id).First(&ymsDomainGroup).Error
	return
}

// GetYmsDomainGroupInfoList 分页获取YmsDomainGroup记录
// Author [piexlmax](https://github.com/piexlmax)
func (ymsDomainGroupService *YmsDomainGroupService)GetYmsDomainGroupInfoList(info ymsReq.YmsDomainGroupSearch) (err error, list interface{}, total int64) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.GVA_DB.Model(&yms.YmsDomainGroup{})
    var ymsDomainGroups []yms.YmsDomainGroup
    // 如果有条件搜索 下方会自动创建搜索语句
    if info.Id != "" {
        db = db.Where("id = ?",info.Id)
    }
	err = db.Count(&total).Error
	if err!=nil {
    	return
    }
	err = db.Limit(limit).Offset(offset).Find(&ymsDomainGroups).Error
	return err, ymsDomainGroups, total
}
