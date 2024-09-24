package noc

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/noc"
)

type NocStatusService struct {
}

// CreateNocStatus 创建NocStatus记录
// Author [piexlmax](https://github.com/piexlmax)
func (nsService *NocStatusService) CreateNocStatus(ns noc.NocStatus) (err error) {
	err = global.GVA_DB.Create(&ns).Error
	return err
}

// DeleteNocStatus 删除NocStatus记录
// Author [piexlmax](https://github.com/piexlmax)
func (nsService *NocStatusService)DeleteNocStatus(ns noc.NocStatus) (err error) {
	err = global.GVA_DB.Delete(&ns).Error
	return err
}

// DeleteNocStatusByIds 批量删除NocStatus记录
// Author [piexlmax](https://github.com/piexlmax)
func (nsService *NocStatusService)DeleteNocStatusByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]noc.NocStatus{},"id in ?",ids.Ids).Error
	return err
}

// UpdateNocStatus 更新NocStatus记录
// Author [piexlmax](https://github.com/piexlmax)
func (nsService *NocStatusService)UpdateNocStatus(ns noc.NocStatus) (err error) {
	err = global.GVA_DB.Save(&ns).Error
	return err
}

// GetNocStatus 根据id获取NocStatus记录
// Author [piexlmax](https://github.com/piexlmax)
func (nsService *NocStatusService)GetNocStatus(id uint) (err error, ns noc.NocStatus) {
	err = global.GVA_DB.Where("id = ?", id).First(&ns).Error
	return
}

// GetNocStatusInfoList 分页获取NocStatus记录
// Author [piexlmax](https://github.com/piexlmax)
func (nsService *NocStatusService)GetNocStatusInfoList(info request.PageInfo) (err error, list interface{}, total int64) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.GVA_DB.Model(&noc.NocStatus{})
    var nss []noc.NocStatus
	err = db.Count(&total).Error
	if err!=nil {
    	return
    }
	err = db.Limit(limit).Offset(offset).Find(&nss).Error
	return err, nss, total
}
