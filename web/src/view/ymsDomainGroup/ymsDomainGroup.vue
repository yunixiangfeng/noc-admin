<template>
  <div>
    <div class="gva-search-box">
      <el-form :inline="true" :model="searchInfo" class="demo-form-inline">
        <el-form-item label="ID">
          <el-input v-model="searchInfo.id" placeholder="搜索条件" />
        </el-form-item>
        <el-form-item>
          <el-button size="mini" type="primary" icon="search" @click="onSubmit">查询</el-button>
          <el-button size="mini" icon="refresh" @click="onReset">重置</el-button>
        </el-form-item>
      </el-form>
    </div>
    <div class="gva-table-box">
        <div class="gva-btn-list">
            <el-button size="mini" type="primary" icon="plus" @click="openDialog">新增</el-button>
            <el-popover v-model:visible="deleteVisible" placement="top" width="160">
            <p>确定要删除吗？</p>
            <div style="text-align: right; margin-top: 8px;">
                <el-button size="mini" type="text" @click="deleteVisible = false">取消</el-button>
                <el-button size="mini" type="primary" @click="onDelete">确定</el-button>
            </div>
            <template #reference>
                <el-button icon="delete" size="mini" style="margin-left: 10px;" :disabled="!multipleSelection.length">删除</el-button>
            </template>
            </el-popover>
        </div>
        <el-table
        ref="multipleTable"
        style="width: 100%"
        tooltip-effect="dark"
        :data="tableData"
        row-key="ID"
        @selection-change="handleSelectionChange"
        >
        <el-table-column type="selection" width="55" />
        <el-table-column align="left" label="日期" width="180">
            <template #default="scope">{{ formatDate(scope.row.CreatedAt) }}</template>
        </el-table-column>
        <el-table-column align="left" label="createTime字段" prop="createTime" width="120" />
        <el-table-column align="left" label="dataCenterId字段" prop="dataCenterId" width="120" />
        <el-table-column align="left" label="领域编码" prop="domainCode" width="120" />
        <el-table-column align="left" label="领域描述" prop="domainDesc" width="120" />
        <el-table-column align="left" label="领域名称" prop="domainName" width="120" />
        <el-table-column align="left" label="领域负责人" prop="domainPrincipal" width="120" />
        <el-table-column align="left" label="逻辑删除" prop="dr" width="120">
            <template #default="scope">{{ formatBoolean(scope.row.dr) }}</template>
        </el-table-column>
        <el-table-column align="left" label="是否专属化" prop="isExclusive" width="120">
            <template #default="scope">{{ formatBoolean(scope.row.isExclusive) }}</template>
        </el-table-column>
        <el-table-column align="left" label="父领域ID，根节点不需要填充值" prop="parentDomainId" width="120" />
        <el-table-column align="left" label="路径" prop="path" width="120" />
        <el-table-column align="left" label="排序" prop="sortIndex" width="120" />
        <el-table-column align="left" label="updateTime字段" prop="updateTime" width="120" />
        <el-table-column align="left" label="ID" prop="id" width="120" />
        <el-table-column align="left" label="按钮组">
            <template #default="scope">
            <el-button type="text" icon="edit" size="small" class="table-button" @click="updateYmsDomainGroupFunc(scope.row)">变更</el-button>
            <el-button type="text" icon="delete" size="mini" @click="deleteRow(scope.row)">删除</el-button>
            </template>
        </el-table-column>
        </el-table>
        <div class="gva-pagination">
            <el-pagination
            layout="total, sizes, prev, pager, next, jumper"
            :current-page="page"
            :page-size="pageSize"
            :page-sizes="[10, 30, 50, 100]"
            :total="total"
            @current-change="handleCurrentChange"
            @size-change="handleSizeChange"
            />
        </div>
    </div>
    <el-dialog v-model="dialogFormVisible" :before-close="closeDialog" title="弹窗操作">
      <el-form :model="formData" label-position="right" label-width="80px">
        <el-form-item label="createTime字段:">
          <el-input v-model.number="formData.createTime" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="dataCenterId字段:">
          <el-input v-model.number="formData.dataCenterId" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="领域编码:">
          <el-input v-model="formData.domainCode" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="领域描述:">
          <el-input v-model="formData.domainDesc" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="领域名称:">
          <el-input v-model="formData.domainName" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="领域负责人:">
          <el-input v-model="formData.domainPrincipal" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="逻辑删除:">
          <el-switch v-model="formData.dr" active-color="#13ce66" inactive-color="#ff4949" active-text="是" inactive-text="否" clearable ></el-switch>
        </el-form-item>
        <el-form-item label="是否专属化:">
          <el-switch v-model="formData.isExclusive" active-color="#13ce66" inactive-color="#ff4949" active-text="是" inactive-text="否" clearable ></el-switch>
        </el-form-item>
        <el-form-item label="父领域ID，根节点不需要填充值:">
          <el-input v-model="formData.parentDomainId" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="路径:">
          <el-input v-model="formData.path" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="排序:">
          <el-input v-model.number="formData.sortIndex" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="updateTime字段:">
          <el-input v-model.number="formData.updateTime" clearable placeholder="请输入" />
        </el-form-item>
        <el-form-item label="ID:">
          <el-input v-model="formData.id" clearable placeholder="请输入" />
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button size="small" @click="closeDialog">取 消</el-button>
          <el-button size="small" type="primary" @click="enterDialog">确 定</el-button>
        </div>
      </template>
    </el-dialog>
  </div>
</template>

<script>
export default {
  name: 'YmsDomainGroup'
}
</script>

<script setup>
import {
  createYmsDomainGroup,
  deleteYmsDomainGroup,
  deleteYmsDomainGroupByIds,
  updateYmsDomainGroup,
  findYmsDomainGroup,
  getYmsDomainGroupList
} from '@/api/ymsDomainGroup'

// 全量引入格式化工具 请按需保留
import { getDictFunc, formatDate, formatBoolean, filterDict } from '@/utils/format'
import { ElMessage, ElMessageBox } from 'element-plus'
import { ref } from 'vue'

// 自动化生成的字典（可能为空）以及字段
const formData = ref({
        createTime: 0,
        dataCenterId: 0,
        domainCode: '',
        domainDesc: '',
        domainName: '',
        domainPrincipal: '',
        dr: false,
        isExclusive: false,
        parentDomainId: '',
        path: '',
        sortIndex: 0,
        updateTime: 0,
        id: '',
        })

// =========== 表格控制部分 ===========
const page = ref(1)
const total = ref(0)
const pageSize = ref(10)
const tableData = ref([])
const searchInfo = ref({})

// 重置
const onReset = () => {
  searchInfo.value = {}
}

// 搜索
const onSubmit = () => {
  page.value = 1
  pageSize.value = 10
  if (searchInfo.value.dr === ""){
      searchInfo.value.dr=null
  }
  if (searchInfo.value.isExclusive === ""){
      searchInfo.value.isExclusive=null
  }
  getTableData()
}

// 分页
const handleSizeChange = (val) => {
  pageSize.value = val
  getTableData()
}

// 修改页面容量
const handleCurrentChange = (val) => {
  page.value = val
  getTableData()
}

// 查询
const getTableData = async() => {
  const table = await getYmsDomainGroupList({ page: page.value, pageSize: pageSize.value, ...searchInfo.value })
  if (table.code === 0) {
    tableData.value = table.data.list
    total.value = table.data.total
    page.value = table.data.page
    pageSize.value = table.data.pageSize
  }
}

getTableData()

// ============== 表格控制部分结束 ===============

// 获取需要的字典 可能为空 按需保留
const setOptions = async () =>{
}

// 获取需要的字典 可能为空 按需保留
setOptions()


// 多选数据
const multipleSelection = ref([])
// 多选
const handleSelectionChange = (val) => {
    multipleSelection.value = val
}

// 删除行
const deleteRow = (row) => {
    ElMessageBox.confirm('确定要删除吗?', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        type: 'warning'
    }).then(() => {
            deleteYmsDomainGroupFunc(row)
        })
    }


// 批量删除控制标记
const deleteVisible = ref(false)

// 多选删除
const onDelete = async() => {
      const ids = []
      if (multipleSelection.value.length === 0) {
        ElMessage({
          type: 'warning',
          message: '请选择要删除的数据'
        })
        return
      }
      multipleSelection.value &&
        multipleSelection.value.map(item => {
          ids.push(item.ID)
        })
      const res = await deleteYmsDomainGroupByIds({ ids })
      if (res.code === 0) {
        ElMessage({
          type: 'success',
          message: '删除成功'
        })
        if (tableData.value.length === ids.length && page.value > 1) {
          page.value--
        }
        deleteVisible.value = false
        getTableData()
      }
    }

// 行为控制标记（弹窗内部需要增还是改）
const type = ref('')

// 更新行
const updateYmsDomainGroupFunc = async(row) => {
    const res = await findYmsDomainGroup({ ID: row.ID })
    type.value = 'update'
    if (res.code === 0) {
        formData.value = res.data.reymsDomainGroup
        dialogFormVisible.value = true
    }
}


// 删除行
const deleteYmsDomainGroupFunc = async (row) => {
    const res = await deleteYmsDomainGroup({ ID: row.ID })
    if (res.code === 0) {
        ElMessage({
                type: 'success',
                message: '删除成功'
            })
            if (tableData.value.length === 1 && page.value > 1) {
            page.value--
        }
        getTableData()
    }
}

// 弹窗控制标记
const dialogFormVisible = ref(false)

// 打开弹窗
const openDialog = () => {
    type.value = 'create'
    dialogFormVisible.value = true
}

// 关闭弹窗
const closeDialog = () => {
    dialogFormVisible.value = false
    formData.value = {
        createTime: 0,
        dataCenterId: 0,
        domainCode: '',
        domainDesc: '',
        domainName: '',
        domainPrincipal: '',
        dr: false,
        isExclusive: false,
        parentDomainId: '',
        path: '',
        sortIndex: 0,
        updateTime: 0,
        id: '',
        }
}
// 弹窗确定
const enterDialog = async () => {
      let res
      switch (type.value) {
        case 'create':
          res = await createYmsDomainGroup(formData.value)
          break
        case 'update':
          res = await updateYmsDomainGroup(formData.value)
          break
        default:
          res = await createYmsDomainGroup(formData.value)
          break
      }
      if (res.code === 0) {
        ElMessage({
          type: 'success',
          message: '创建/更改成功'
        })
        closeDialog()
        getTableData()
      }
}
</script>

<style>
</style>
