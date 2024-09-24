<template>
  <div>
    <div class="gva-form-box">
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
        <el-form-item>
          <el-button size="mini" type="primary" @click="save">保存</el-button>
          <el-button size="mini" type="primary" @click="back">返回</el-button>
        </el-form-item>
      </el-form>
    </div>
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
  updateYmsDomainGroup,
  findYmsDomainGroup
} from '@/api/ymsDomainGroup'

// 自动获取字典
import { getDictFunc } from '@/utils/format'
import { useRoute, useRouter } from "vue-router"
import { ElMessage } from 'element-plus'
import { ref } from 'vue'
const route = useRoute()
const router = useRouter()
const type = ref('')
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

// 初始化方法
const init = async () => {
 // 建议通过url传参获取目标数据ID 调用 find方法进行查询数据操作 从而决定本页面是create还是update 以下为id作为url参数示例
    if (route.query.id) {
      const res = await findYmsDomainGroup({ ID: route.query.id })
      if (res.code === 0) {
        formData.value = res.data.reymsDomainGroup
        type.value = 'update'
      }
    } else {
      type.value = 'create'
    }
}

init()
// 保存按钮
const save = async() => {
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
      }
}

// 返回按钮
const back = () => {
    router.go(-1)
}

</script>

<style>
</style>
