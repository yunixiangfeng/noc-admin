package noc

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/noc"
	nocReq "github.com/flipped-aurora/gin-vue-admin/server/model/noc/request"
)

type NocReasonsService struct {
}


// CreateNocReasons 创建NocReasons记录
// Author [piexlmax](https://github.com/piexlmax)
func (nrService *NocReasonsService) CreateNocReasons(ns noc.NocReasons) (err error) {
	err = global.GVA_DB.Create(&ns).Error
	return err
}

// DeleteNocReasons 删除NocReasons记录
// Author [piexlmax](https://github.com/piexlmax)
func (nrService *NocReasonsService)DeleteNocReasons(ns noc.NocReasons) (err error) {
	err = global.GVA_DB.Delete(&ns).Error
	return err
}

// DeleteNocReasonsByIds 批量删除NocReasons记录
// Author [piexlmax](https://github.com/piexlmax)
func (nrService *NocReasonsService)DeleteNocReasonsByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]noc.NocReasons{},"id in ?",ids.Ids).Error
	return err
}

// UpdateNocReasons 更新NocReasons记录
// Author [piexlmax](https://github.com/piexlmax)
func (nrService *NocReasonsService)UpdateNocReasons(ns noc.NocReasons) (err error) {
	err = global.GVA_DB.Save(&ns).Error
	return err
}

// GetNocReasons 根据id获取NocReasons记录
// Author [piexlmax](https://github.com/piexlmax)
func (nrService *NocReasonsService)GetNocReasons(id uint) (err error, ns noc.NocReasons) {
	err = global.GVA_DB.Where("id = ?", id).First(&ns).Error
	return
}

// GetNocReasonsInfoList 分页获取NocReasons记录
// Author [piexlmax](https://github.com/piexlmax)
func (nrService *NocReasonsService)GetNocReasonsInfoList(info nocReq.NocReasonsSearch) (err error, list interface{}, total int64) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.GVA_DB.Model(&noc.NocReasons{})
    var nss []noc.NocReasons
    // 如果有条件搜索 下方会自动创建搜索语句
    //if info.id != nil {
    //   db = db.Where("id = ?",info.Id)
    //}
    //if info.Name != "" {
    //    db = db.Where("name = ?",info.Name)
    //}
    //if info.Treecode != "" {
    //    db = db.Where("treecode = ?",info.Treecode)
    //}
    if info.Parent_id != "" {
       db = db.Where("parent_id = ?",info.Parent_id)
    }
	err = db.Count(&total).Error
	if err!=nil {
    	return
    }
	err = db.Limit(limit).Offset(offset).Find(&nss).Error
	return err, nss, total
}
