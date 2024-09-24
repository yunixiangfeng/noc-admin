package noc

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/noc"
	nocReq "github.com/flipped-aurora/gin-vue-admin/server/model/noc/request"
)

type NocTeamService struct {
}

// CreateNocTeam 创建NocTeam记录
// Author [piexlmax](https://github.com/piexlmax)
func (ntService *NocTeamService) CreateNocTeam(nt noc.NocTeam) (err error) {
	err = global.GVA_DB.Create(&nt).Error
	return err
}

// DeleteNocTeam 删除NocTeam记录
// Author [piexlmax](https://github.com/piexlmax)
func (ntService *NocTeamService)DeleteNocTeam(nt noc.NocTeam) (err error) {
	err = global.GVA_DB.Delete(&nt).Error
	return err
}

// DeleteNocTeamByIds 批量删除NocTeam记录
// Author [piexlmax](https://github.com/piexlmax)
func (ntService *NocTeamService)DeleteNocTeamByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]noc.NocTeam{},"id in ?",ids.Ids).Error
	return err
}

// UpdateNocTeam 更新NocTeam记录
// Author [piexlmax](https://github.com/piexlmax)
func (ntService *NocTeamService)UpdateNocTeam(nt noc.NocTeam) (err error) {
	err = global.GVA_DB.Save(&nt).Error
	return err
}

// GetNocTeam 根据id获取NocTeam记录
// Author [piexlmax](https://github.com/piexlmax)
func (ntService *NocTeamService)GetNocTeam(id uint) (err error, nt noc.NocTeam) {
	err = global.GVA_DB.Where("id = ?", id).First(&nt).Error
	return
}

// GetNocTeamInfoList 分页获取NocTeam记录
// Author [piexlmax](https://github.com/piexlmax)
func (ntService *NocTeamService)GetNocTeamInfoList(info nocReq.NocTeamSearch) (err error, list interface{}, total int64) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
    // 创建db
	db := global.GVA_DB.Model(&noc.NocTeam{})
    var nts []noc.NocTeam
	if info.Responsible_dept_id != "" {
		db = db.Where("responsible_dept_id = ?",info.Responsible_dept_id)
	}
	err = db.Count(&total).Error
	if err!=nil {
    	return
    }
	err = db.Limit(limit).Offset(offset).Find(&nts).Error
	return err, nts, total
}
