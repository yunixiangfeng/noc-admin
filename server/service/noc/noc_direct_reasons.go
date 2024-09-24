package noc

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/noc"
)

type NocDirectReasonsService struct {
}

// CreateNocDirectReasons 创建NocDirectReasons记录
// Author [piexlmax](https://github.com/piexlmax)
func (ndrService *NocDirectReasonsService) CreateNocDirectReasons(ndr noc.NocDirectReasons) (err error) {
	err = global.GVA_DB.Create(&ndr).Error
	return err
}

// DeleteNocDirectReasons 删除NocDirectReasons记录
// Author [piexlmax](https://github.com/piexlmax)
func (ndrService *NocDirectReasonsService)DeleteNocDirectReasons(ndr noc.NocDirectReasons) (err error) {
	err = global.GVA_DB.Delete(&ndr).Error
	return err
}

// DeleteNocDirectReasonsByIds 批量删除NocDirectReasons记录
// Author [piexlmax](https://github.com/piexlmax)
func (ndrService *NocDirectReasonsService)DeleteNocDirectReasonsByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]noc.NocDirectReasons{},"id in ?",ids.Ids).Error
	return err
}

// UpdateNocDirectReasons 更新NocDirectReasons记录
// Author [piexlmax](https://github.com/piexlmax)
func (ndrService *NocDirectReasonsService)UpdateNocDirectReasons(ndr noc.NocDirectReasons) (err error) {
	err = global.GVA_DB.Save(&ndr).Error
	return err
}

// GetNocDirectReasons 根据id获取NocDirectReasons记录
// Author [piexlmax](https://github.com/piexlmax)
func (ndrService *NocDirectReasonsService)GetNocDirectReasons(id uint) (err error, ndr noc.NocDirectReasons) {
	err = global.GVA_DB.Where("id = ?", id).First(&ndr).Error
	return
}

// GetNocDirectReasonsInfoList 分页获取NocDirectReasons记录
// Author [piexlmax](https://github.com/piexlmax)
func (ndrService *NocDirectReasonsService)GetNocDirectReasonsInfoList(info request.PageInfo) (err error, list interface{}, total int64) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.GVA_DB.Model(&noc.NocDirectReasons{})
    var ndrs []noc.NocDirectReasons
    // 如果有条件搜索 下方会自动创建搜索语句
	err = db.Count(&total).Error
	if err!=nil {
    	return
    }
	err = db.Limit(limit).Offset(offset).Find(&ndrs).Error
	return err, ndrs, total
}
