package noc

import (
	"fmt"
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/noc"
	"github.com/flipped-aurora/gin-vue-admin/server/model/noc/response"
)

type NocService struct{}

func (nocService *NocService) CreateNoc(noc noc.Noc) (err error) {
	err = global.GVA_DB.Create(&noc).Error
	return err
}


func (nocService *NocService)UpdateNocById(id uint,noc noc.Noc) (err error) {
	err = global.GVA_DB.Where("id = ?", id).Save(&noc).Error
	return err
}


func (nocService *NocService) GetNocDetailById(id uint) (err error, nocDetail []response.NocDetail) {
	//err = global.GVA_DB.Where("id = ?", id).First(&noc).Error
	//db := global.GVA_DB.Model(&noc.Noc{})
	fmt.Println(id)
	db := global.GVA_DB.Model(&noc.Noc{})
	err = db.Select("noc.id,noc.created_at,noc.updated_at,noc.deleted_at,noc.fixed_time,noc.start_time,noc.found_time,noc.desc,noc.detail,noc.analysis,noc.serial_number,noc.title,noc_status.status,noc_priority.priority,noc_department.dept_name as responsible_dept,noc_team.team_name as responsible_team,noc_direct_reasons.name as direct_reason,noc_reasons.name as noc_reason,sys_users.username").Joins("JOIN noc_status ON noc_status.id = noc.status_id").Joins("JOIN noc_priority ON noc_priority.id = noc.priority_id").Joins("JOIN noc_department on noc_department.id = noc.responsible_dept_id").Joins("JOIN noc_team on noc_team.id = noc.responsible_team_id").Joins("JOIN noc_direct_reasons on noc_direct_reasons.id = noc.direct_reason_id").Joins("JOIN noc_reasons on noc_reasons.id = noc.noc_reason_id").Joins("JOIN sys_users on sys_users.id = noc.declarant_uid").Where("noc.id = ?", id).Find(&nocDetail).Error
	fmt.Println(nocDetail)
	return
}

func (nocService *NocService) GetNocById(id uint) (err error, noc noc.Noc) {
	err = global.GVA_DB.Where("id = ?", id).First(&noc).Error
	return
}


func (nocService *NocService)DeleteNocById(id uint) (err error) {
	err = global.GVA_DB.Delete(&[]noc.Noc{},"id = ?",id).Error
	return err
}
func (nocService *NocService)GetNocList(info request.PageInfo) (err error, list interface{}, total int64) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	// 创建db
	db := global.GVA_DB.Model(&noc.Noc{})
	var nocList []noc.NocList
	err = db.Count(&total).Error
	if err!=nil {
		return
	}
	err = db.Limit(limit).Offset(offset).Select("noc.id,noc.created_at,noc.updated_at,noc.deleted_at,noc.serial_number,noc.title,noc_status.status,noc_priority.priority,noc_department.dept_name as responsible_dept").Joins("JOIN noc_status ON noc_status.id = noc.status_id").Joins("JOIN noc_priority ON noc_priority.id = noc.priority_id").Joins("JOIN noc_department on noc_department.id = noc.responsible_dept_id").Find(&nocList).Error
	return err, nocList, total
}