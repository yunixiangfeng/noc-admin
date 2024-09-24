package noc

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/noc"
)

type NocDepartmentService struct {
}

// CreateNocDepartment 创建NocDepartment记录
// Author [piexlmax](https://github.com/piexlmax)
func (ndService *NocDepartmentService) CreateNocDepartment(nd noc.NocDepartment) (err error) {
	err = global.GVA_DB.Create(&nd).Error
	return err
}

// DeleteNocDepartment 删除NocDepartment记录
// Author [piexlmax](https://github.com/piexlmax)
func (ndService *NocDepartmentService)DeleteNocDepartment(nd noc.NocDepartment) (err error) {
	err = global.GVA_DB.Delete(&nd).Error
	return err
}

// DeleteNocDepartmentByIds 批量删除NocDepartment记录
// Author [piexlmax](https://github.com/piexlmax)
func (ndService *NocDepartmentService)DeleteNocDepartmentByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]noc.NocDepartment{},"id in ?",ids.Ids).Error
	return err
}

// UpdateNocDepartment 更新NocDepartment记录
// Author [piexlmax](https://github.com/piexlmax)
func (ndService *NocDepartmentService)UpdateNocDepartment(nd noc.NocDepartment) (err error) {
	err = global.GVA_DB.Save(&nd).Error
	return err
}

// GetNocDepartment 根据id获取NocDepartment记录
// Author [piexlmax](https://github.com/piexlmax)
func (ndService *NocDepartmentService)GetNocDepartment(id uint) (err error, nd noc.NocDepartment) {
	err = global.GVA_DB.Where("id = ?", id).First(&nd).Error
	return
}

// GetNocDepartmentInfoList 分页获取NocDepartment记录
// Author [piexlmax](https://github.com/piexlmax)
func (ndService *NocDepartmentService)GetNocDepartmentInfoList(info request.PageInfo) (err error, list interface{}, total int64) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.GVA_DB.Model(&noc.NocDepartment{})
    var nds []noc.NocDepartment
    //// 如果有条件搜索 下方会自动创建搜索语句
    //if info.Id != nil {
    //    db = db.Where("id = ?",info.Id)
    //}
    //if info.Dept_name != "" {
    //    db = db.Where("dept_name = ?",info.Dept_name)
    //}
    //if info.Director != "" {
    //    db = db.Where("director = ?",info.Director)
    //}
	err = db.Count(&total).Error
	if err!=nil {
    	return
    }
	err = db.Limit(limit).Offset(offset).Find(&nds).Error
	return err, nds, total
}
