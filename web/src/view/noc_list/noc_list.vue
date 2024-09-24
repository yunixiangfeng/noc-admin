<template>
  <div>
    <!-- 故障上报弹窗相关 start -->
    <el-row
      style="
        font-size: 26px;
        line-height: 26px;
        margin-bottom: 20px;
        padding: 20px;
      "
    >
      <el-button type="primary" round @click="dialogFormVisibleCreate = true"
        >故障上报</el-button
      >
      <el-dialog v-model="dialogFormVisibleCreate" append-to-body center>
        <el-form :model="createData">
          <el-form-item label="编号: " :label-width="formLabelWidth">
            <el-input v-model="createData.serial_number" autocomplete="off" />
          </el-form-item>
          <el-form-item label="标题: " :label-width="formLabelWidth">
            <el-input v-model="createData.title" autocomplete="off" />
          </el-form-item>
        </el-form>
        <template #footer>
          <div class="dialog-footer">
            <el-button @click="dialogFormVisibleCreate = false"
              >取 消</el-button
            >
            <el-button type="primary" @click="createDataFunc()"
              >确 定</el-button
            >
          </div>
        </template>
      </el-dialog>
    </el-row>
    <!-- 故障上报弹窗相关 end -->
    <!-- 故障更新弹窗相关 start -->
    <el-row
      style="
        font-size: 26px;
        line-height: 26px;
        margin-bottom: 20px;
        padding: 20px;
      "
    >
      <el-dialog
        v-model="dialogFormVisibleUpdate"
        append-to-body
        center
        fullscreen="true"
        custom-class="cloudBody"
      >
        <el-form :model="updateData">
          <el-form-item label="故障编号: " :label-width="formLabelWidth">
            <el-input v-model="updateData.serial_number" autocomplete="off" />
          </el-form-item>
          <el-form-item label="故障标题: " :label-width="formLabelWidth">
            <el-input v-model="updateData.title" autocomplete="off" />
          </el-form-item>
          <el-form-item label="开始时间: " :label-width="formLabelWidth">
            <el-date-picker
              v-model="updateData.start_time"
              type="datetime"
              placeholder="Select date and time"
            />
          </el-form-item>
          <el-form-item label="发现时间: " :label-width="formLabelWidth">
            <el-date-picker
              v-model="updateData.found_time"
              type="datetime"
              placeholder="Select date and time"
            />
          </el-form-item>
          <el-form-item label="恢复时间: " :label-width="formLabelWidth">
            <el-date-picker
              v-model="updateData.fixed_time"
              type="datetime"
              placeholder="Select date and time"
            />
          </el-form-item>
          <el-row>
            <el-col :span="11">
              <el-form-item label="故障状态: " :label-width="formLabelWidth">
                <el-select v-model="updateData.status_id" placeholder="请选择">
                  <el-option
                    v-for="item in statusList"
                    :key="item.id"
                    :label="item.status"
                    :value="item.id"
                  />
                </el-select>
              </el-form-item>
            </el-col>
            <el-col :span="2" />
            <el-col :span="11">
              <el-form-item label="故障级别: " :label-width="formLabelWidth">
                <el-select
                  v-model="updateData.priority_id"
                  placeholder="请选择"
                >
                  <el-option
                    v-for="item in priorityList"
                    :key="item.id"
                    :label="item.priority"
                    :value="item.id"
                  />
                </el-select>
              </el-form-item>
            </el-col>
          </el-row>
          <el-row>
            <el-col :span="11">
              <el-form-item label="故障领域: " :label-width="formLabelWidth">
                <el-select
                  v-model="updateData.responsible_dept_id"
                  placeholder="请选择"
                  @change="changeDepartment"
                >
                  <el-option
                    v-for="item in departmentList"
                    :key="item.id"
                    :label="item.dept_name"
                    :value="item.id"
                  />
                </el-select>
              </el-form-item>
            </el-col>
            <el-col :span="2" />
            <el-col :span="11">
              <el-form-item label="故障部门: " :label-width="formLabelWidth">
                <el-select
                  v-model="updateData.responsible_team_id"
                  placeholder="请选择"
                >
                  <el-option
                    v-for="item in teamList"
                    :key="item.id"
                    :label="item.team_name"
                    :value="item.id"
                  />
                </el-select>
              </el-form-item>
            </el-col>
          </el-row>
          <el-row>
            <el-col :span="11">
              <el-form-item label="一级原因: " :label-width="formLabelWidth">
                <el-select
                  v-model="updateData.direct_reason_id"
                  placeholder="请选择"
                  @change="changeReason"
                >
                  <el-option
                    v-for="item in directReasonsList"
                    :key="item.id"
                    :label="item.name"
                    :value="item.id"
                  />
                </el-select>
              </el-form-item>
            </el-col>
            <el-col :span="2" />
            <el-col :span="11">
              <el-form-item label="二级原因: " :label-width="formLabelWidth">
                <el-select
                  v-model="updateData.noc_reason_id"
                  placeholder="请选择"
                >
                  <el-option
                    v-for="item in reasonsList"
                    :key="item.id"
                    :label="item.name"
                    :value="item.id"
                  />
                </el-select>
              </el-form-item>
            </el-col>
          </el-row>
          <el-form-item label="故障概述: ">
            <br />
            <v-md-editor v-model="updateData.desc" height="700px" />
          </el-form-item>
          <el-form-item label="故障详情: ">
            <br />
            <v-md-editor v-model="updateData.detail" height="700px" />
          </el-form-item>
          <el-form-item label="故障复盘: ">
            <br />
            <v-md-editor v-model="updateData.analysis" height="700px" />
          </el-form-item>
        </el-form>
        <template #footer>
          <div class="dialog-footer">
            <el-button @click="dialogFormVisibleUpdate = false"
              >取 消</el-button
            >
            <el-button type="primary" @click="updateNocData()">确 定</el-button>
          </div>
        </template>
      </el-dialog>
    </el-row>
    <!-- 故障更新弹窗相关 end -->
    <!-- 故障列表相关 start -->
    <el-table
      :data="tableData"
      stripe
      border
      style="width: 100%"
      height="250"
      :row-class-name="tableRowClassName"
    >
      <el-table-column label="日期" width="180">
        <template #default="scope">{{
          formatDate(scope.row.CreatedAt)
        }}</template>
      </el-table-column>
      <el-table-column prop="serial_number" label="编号" width="400" />
      <el-table-column prop="title" label="标题" width="320" />
      <el-table-column prop="priority" label="级别" width="120" />
      <el-table-column prop="responsible_dept" label="责任方" width="120" />
      <el-table-column prop="status" label="状态" width="120" />
      <el-table-column label="操作" width="200">
        <template #default="scope">
          <el-button
            icon="search"
            size="small"
            type="text"
            @click="getNocDetailData(scope.row)"
            >详情</el-button
          >
          <el-button
            icon="edit"
            size="small"
            type="text"
            @click="openEdit(scope.row)"
            >编辑</el-button
          >
        </template>
      </el-table-column>
    </el-table>
    <!-- 故障列表相关 end -->
    <!-- 故障详情相关 start -->
    <el-dialog
      v-model="dialogTableVisible"
      append-to-body
      center
      fullscreen="true"
      custom-class="cloudBody"
    >
      <el-card body-style="card_item" shadow="always">
        <template #header>
          <div>故障信息</div>
        </template>
        <div>
          <el-row :gutter="10">
            <el-col :span="14" style="font-size: 26px"
              ><b>故障编号: </b>{{ detailData.serial_number }}</el-col
            >
          </el-row>
          <el-row :gutter="10">
            <el-col :span="14" style="font-size: 26px"
              ><b>故障标题: </b>{{ detailData.title }}</el-col
            >
          </el-row>
          <el-row :gutter="10">
            <el-col :span="14" style="font-size: 26px"
              ><b>开始时间: </b>{{ formatDate(detailData.start_time) }}</el-col
            >
          </el-row>
          <el-row :gutter="10">
            <el-col :span="14" style="font-size: 26px"
              ><b>发现时间: </b>{{ formatDate(detailData.found_time) }}</el-col
            >
          </el-row>
          <el-row :gutter="10">
            <el-col :span="14" style="font-size: 26px"
              ><b>上报时间: </b>{{ formatDate(detailData.CreatedAt) }}</el-col
            >
          </el-row>
          <el-row :gutter="10">
            <el-col :span="14" style="font-size: 26px"
              ><b>恢复时间: </b>{{ formatDate(detailData.fixed_time) }}</el-col
            >
          </el-row>
          <el-row :gutter="10">
            <el-col :span="4" style="font-size: 26px"
              ><b>故障状态: </b>{{ detailData.status }}</el-col
            >
          </el-row>
          <el-row :gutter="10">
            <el-col :span="14" style="font-size: 26px"
              ><b>故障级别: </b>{{ detailData.priority }}</el-col
            >
          </el-row>
          <el-row :gutter="10">
            <el-col :span="14" style="font-size: 26px"
              ><b>故障部门: </b>{{ detailData.responsible_dept }}/{{
                detailData.responsible_team
              }}</el-col
            >
          </el-row>
          <el-row :gutter="10">
            <el-col :span="24" style="font-size: 26px"
              ><b>故障原因: </b>{{ detailData.direct_reason }}/{{
                detailData.noc_reason
              }}</el-col
            >
          </el-row>
          <el-row :gutter="10">
            <el-col style="font-size: 26px"><b>故障概述: </b><br /></el-col>
            <v-md-preview :text="detailData.desc" />
          </el-row>
          <el-row :gutter="10">
            <el-col style="font-size: 26px"><b>故障详情: </b><br /></el-col>
            <v-md-preview :text="detailData.detail" />
          </el-row>
          <el-row :gutter="10">
            <el-col style="font-size: 26px"><b>故障复盘: </b><br /></el-col>
            <v-md-preview :text="detailData.analysis" />
          </el-row>
        </div>
      </el-card>
    </el-dialog>
    <!-- 故障详情相关 end -->
  </div>
</template>
<script>
import {
  getNocList,
  createNoc,
  getNocDetailById,
  updateNocById,
  getNocById,
} from "@/api/noc";
import { getNocStatusList } from "@/api/noc_status";
import { getNocDepartmentList } from "@/api/noc_department";
import { getNocPriorityList } from "@/api/noc_priority";
import { getNocReasonsList } from "@/api/noc_reasons";
import { getNocTeamList } from "@/api/noc_team";
import { getNocDirectReasonsList } from "@/api/noc_direct_reasons";
import { useUserStore } from "@/pinia/modules/user";
import { formatTimeToStr } from "@/utils/date";
const userStore = useUserStore();
export default {
  name: "Noc",
  data() {
    return {
      tableData: [], // 故障列表
      statusList: [], // 状态列表
      departmentList: [], // 领域列表
      priorityList: [], // 级别列表
      reasonsList: [], // 二级原因列表
      teamList: [], // 团队列表
      directReasonsList: [], // 一级原因列表
      priority_id: "", // 级别ID
      currentDept: "", // 当前领域
      currentReason: "", // 当前一级原因
      formLabelWidth: "120px",
      detailData: {
        // 详情信息
        CreatedAt: "", // 上报时间
        ID: "", // 故障ID
        UpdatedAt: "", // 更新时间
        analysis: "", // 故障复盘
        desc: "", // 故障概述
        detail: "", // 故障详情
        direct_reason: "", // 一级原因
        fixed_time: "", // 恢复时间
        found_time: "", // 发现时间
        noc_reason: "", // 二级原因
        priority: "", // 级别
        responsible_dept: "", // 责任领域
        responsible_team: "", // 责任团队
        serial_number: "", // 故障编号
        start_time: "", // 开始时间
        status: "", // 当前状态
        title: "", // 故障标题
      },
      updateData: {
        // 更新信息
        ID: "", // 故障ID
        analysis: "", // 故障复盘
        desc: "", // 故障概述
        detail: "", // 故障详情
        direct_reason_id: "", // 一级原因ID
        fixed_time: "", // 恢复时间
        found_time: "", // 发现时间
        noc_reason_id: "", // 二级原因ID
        priority_id: "", // 级别ID
        responsible_dept_id: "", // 故障领域ID
        responsible_team_id: "", // 故障团队ID
        serial_number: "", // 故障编号
        start_time: "", // 开始时间
        status_id: "", // 状态ID
        title: "", // 故障标题
      },
      createData: {
        // 上报故障
        title: "", // 故障标题
        serial_number: "", // 故障编号
        declarant_uid: "" | userStore.userInfo.ID, // 故障上报人ID
      },
      dialogTableVisible: false, // 开启详情弹窗
      dialogFormVisibleCreate: false, // 开启上报弹窗
      dialogFormVisibleUpdate: false, // 开启更新弹窗
      nocQuery: {
        // 详情查询
        ID: "", // 故障ID
      },
      nocListQuery: {
        // 故障列表查询,默认页查询 分页查询
        page: "" || 1,
        pageSize: "" || 10,
      },
      statusListQuery: {
        // 状态列表查询
        page: "" || 1,
        pageSize: "" || 10,
      },
      departmentListQuery: {
        // 故障领域列表查询
        page: "" || 1,
        pageSize: "" || 10,
      },
      priorityListQuery: {
        // 故障级别列表查询
        page: "" || 1,
        pageSize: "" || 10,
      },
      reasonsListQuery: {
        // 故障二级原因列表查询
        parent_id: "" | 9,
        page: "" || 1,
        pageSize: "" || 100,
      },
      teamListQuery: {
        // 故障团队列表查询
        responsible_dept_id: "" | 1,
        page: "" || 1,
        pageSize: "" || 10,
      },
      directReasonsListQuery: {
        // 故障一级原因列表查询
        parent_id: "" | 0,
        page: "" || 1,
        pageSize: "" || 10,
      },
    };
  },
  watch: {
    currentDept(val) {
      // 监听当前故障领域变化
      console.log("领域: ", val);
      this.teamList = [];
      this.updateData.responsible_team_id = "";
      this.teamListQuery.responsible_dept_id = val;
      this.getNocTeamListData();
    },
    currentReason(val) {
      // 监听当前故障原因变化
      console.log("原因: ", val);
      this.reasonsList = [];
      this.updateData.noc_reason_id = "";
      this.reasonsListQuery.parent_id = val;
      this.getNocReasonsListData();
    },
  },
  beforeMount() {
    // 默认获取故障列表
    this.getNocListData();
  },
  methods: {
    tableRowClassName({ row, rowIndex }) {
      // 栅栏表单
      if (rowIndex === 1) {
        return "warning-row";
      } else if (rowIndex === 2) {
        return "success-row";
      }
      return "";
    },
    getNocListData() {
      // 查询故障列表
      getNocList(this.nocListQuery).then((res) => {
        this.tableData = res.data.list;
        this.total = res.data.total;
        this.page = res.data.page;
        this.pageSize = res.data.pageSize;
      });
    },
    getNocReasonsListData() {
      // 查询故障二级原因列表
      getNocReasonsList(this.reasonsListQuery).then((res) => {
        this.reasonsList = res.data.list;
      });
    },
    getNocTeamListData() {
      // 查询故障团队列表
      getNocTeamList(this.teamListQuery).then((res) => {
        this.teamList = res.data.list;
      });
    },
    getNocDetailData(row) {
      // 获取故障详细信息
      this.detailData = {}; // 防止数据错乱,置空
      this.dialogTableVisible = true;
      getNocDetailById({ ID: row.ID }).then((res) => {
        this.detailData = res.data.noc_detail[0];
      });
    },
    openEdit(row) {
      // 开启故障编辑
      this.updateData = {};
      this.dialogFormVisibleUpdate = true;
      getNocById({ ID: row.ID }).then((res) => {
        // 获取指定ID故障信息,填充故障更新表单
        this.updateData = res.data.noc_data;
      });
      this.dialogFormVisibleUpdate = true; // 编辑弹窗
      getNocStatusList(this.statusListQuery).then((res) => {
        this.statusList = res.data.list;
      });
      getNocDepartmentList(this.departmentListQuery).then((res) => {
        this.departmentList = res.data.list;
      });
      getNocPriorityList(this.priorityListQuery).then((res) => {
        this.priorityList = res.data.list;
      });
      getNocReasonsList(this.reasonsListQuery).then((res) => {
        this.reasonsList = res.data.list;
      });
      getNocTeamList(this.teamListQuery).then((res) => {
        this.teamList = res.data.list;
      });
      getNocDirectReasonsList(this.directReasonsListQuery).then((res) => {
        this.directReasonsList = res.data.list;
      });
    },
    updateNocData() {
      // 真正执行故障信息更新操作
      updateNocById(this.updateData).then((res) => {
        this.updateData = {}; // 更新后置空更新表单数据
        this.dialogFormVisibleUpdate = false; // 关闭更新窗口
        this.getNocListData(); // 重新拉取故障列表数据
      });
    },
    closeDialog() {
      // 关闭故障详情
      this.dialogFormVisible = false;
      this.detailData = "";
    },
    getSortClass: function (key) {
      const sort = this.listQuery.sort;
      return sort === `+${key}` ? "ascending" : "descending";
    },
    formatDate: function (time) {
      // 时间格式化
      if (time != null && time !== "") {
        var date = new Date(time);
        return formatTimeToStr(date, "yyyy-MM-dd hh:mm:ss");
      } else {
        return "";
      }
    },
    changeDepartment(_value) {
      // 变换故障领域,触发故障领域监听,更新故障领域下属团队列表
      this.currentDept = _value;
      this.updateData.responsible_dept_id = _value;
    },
    changeReason(_value) {
      // 变换故障一级原因,触发故障一级原因监听,更新故障二级原因列表
      this.currentReason = _value;
      this.updateData.direct_reason_id = _value;
    },
    resetCreateData() {
      // 重置故障申报表单
      this.createData.title = "";
      this.createData.serial_number = "";
    },
    createDataFunc() {
      // 故障申报
      this.createData.declarant_uid = userStore.userInfo.ID;
      createNoc(this.createData).then((res) => {
        this.getNocListData();
        this.resetCreateData();
        this.dialogFormVisibleCreate = false;
      });
    },
  },
};
</script>
<style>
.el-table.warning-row {
  background: oldlace;
}
.el-table.success-row {
  background: #f0f9eb;
}
.editor {
  height: 750px;
}
.demo-datetime-picker {
  display: flex;
  width: 100%;
  padding: 0;
  flex-wrap: wrap;
}
.demo-datetime-picker .block {
  padding: 30px 0;
  text-align: center;
  border-right: solid 1px var(--el-border-color);
  flex: 1;
}
.work {
  background-color: #fff;
  border-radius: 5px;
  padding: 15px;
}
.bread {
  margin-top: 15px;
  padding: 20px;
  background-color: rgb(238, 241, 246);
  border-radius: 5px;
}
.margin-input {
  margin-top: 20px;
  margin-bottom: 15px;
}
.col-right {
  position: relative;
  text-align: center;
}
.col-right .create {
  position: absolute;
  bottom: 30px;
  left: 50%;
  transform: translateX(-50%);
}
.show {
  overflow: hidden;
}
.details_content {
  min-height: 700px;
  color: #303133;
}
.el-dialog.cloudBody {
  background-color: rgb(246, 249, 250);
  height: 200%;
  border-radius: 5px;
  padding: 5px;
  box-sizing: border-box;
  font-size: 166px;
}
.bottom {
  margin-top: 13px;
  line-height: 12px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  font-size: 16px;
}
</style>
