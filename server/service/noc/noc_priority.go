package noc

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/noc"
)

type NocPriorityService struct {
}

// CreateNocPriority 创建NocPriority记录
// Author [piexlmax](https://github.com/piexlmax)
func (NPService *NocPriorityService) CreateNocPriority(NP noc.NocPriority) (err error) {
	err = global.GVA_DB.Create(&NP).Error
	return err
}

// DeleteNocPriority 删除NocPriority记录
// Author [piexlmax](https://github.com/piexlmax)
func (NPService *NocPriorityService)DeleteNocPriority(NP noc.NocPriority) (err error) {
	err = global.GVA_DB.Delete(&NP).Error
	return err
}

// DeleteNocPriorityByIds 批量删除NocPriority记录
// Author [piexlmax](https://github.com/piexlmax)
func (NPService *NocPriorityService)DeleteNocPriorityByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]noc.NocPriority{},"id in ?",ids.Ids).Error
	return err
}

// UpdateNocPriority 更新NocPriority记录
// Author [piexlmax](https://github.com/piexlmax)
func (NPService *NocPriorityService)UpdateNocPriority(NP noc.NocPriority) (err error) {
	err = global.GVA_DB.Save(&NP).Error
	return err
}

// GetNocPriority 根据id获取NocPriority记录
// Author [piexlmax](https://github.com/piexlmax)
func (NPService *NocPriorityService)GetNocPriority(id uint) (err error, NP noc.NocPriority) {
	err = global.GVA_DB.Where("id = ?", id).First(&NP).Error
	return
}

// GetNocPriorityInfoList 分页获取NocPriority记录
// Author [piexlmax](https://github.com/piexlmax)
func (NPService *NocPriorityService)GetNocPriorityInfoList(info request.PageInfo) (err error, list interface{}, total int64) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.GVA_DB.Model(&noc.NocPriority{})
    var NPs []noc.NocPriority
    // 如果有条件搜索 下方会自动创建搜索语句
	err = db.Count(&total).Error
	if err!=nil {
    	return
    }
	err = db.Limit(limit).Offset(offset).Find(&NPs).Error
	return err, NPs, total
}
