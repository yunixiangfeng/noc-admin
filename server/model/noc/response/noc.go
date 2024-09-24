package response

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type NocDetail struct {
	global.GVA_MODEL
	Serial_number  string `json:"serial_number"`
	Title  string `json:"title"`
	Priority  string `json:"priority"`
	Status  string `json:"status"`
	Responsible_dept  string `json:"responsible_dept"`
	Responsible_team  string `json:"responsible_team"`
	Noc_reason  string `json:"noc_reason"`
	Direct_reason  string `json:"direct_reason"`
	Desc  string `json:"desc"`
	Detail  string `json:"detail"`
	Analysis  string `json:"analysis"`
	Start_time  *time.Time `json:"start_time"`
	Fixed_time  *time.Time `json:"fixed_time"`
	Found_time  *time.Time `json:"found_time"`
	username  string `json:"username"`
}