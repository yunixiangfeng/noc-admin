import { createApp } from 'vue'
import ElMoment from 'el-moment'
import 'element-plus/dist/index.css'
import './style/element_visiable.scss'
import VMdEditor from '@kangc/v-md-editor'
import '@kangc/v-md-editor/lib/style/base-editor.css'
import githubTheme from '@kangc/v-md-editor/lib/theme/github.js'
import json from 'highlight.js/lib/languages/json'
import '@kangc/v-md-editor/lib/theme/style/github.css'
import VMdPreview from '@kangc/v-md-editor/lib/preview'
import '@kangc/v-md-editor/lib/style/preview.css'
import hljs from 'highlight.js'
import ElementPlus from 'element-plus'
import zhCn from 'element-plus/es/locale/lang/zh-cn'
// 引入gin-vue-admin前端初始化相关内容
import './core/gin-vue-admin'
// 引入封装的router
import router from '@/router/index'
import '@/permission'
import run from '@/core/gin-vue-admin.js'
import auth from '@/directive/auth'
import { store } from '@/pinia'
import App from './App.vue'
const app = createApp(App)
app.config.productionTip = false

hljs.registerLanguage('json', json)
VMdEditor.use(githubTheme, {
  Hljs: hljs,
})
VMdPreview.use(githubTheme, {
  Hljs: hljs,
})
app
  .use(run)
  .use(store)
  .use(auth)
  .use(router)
  .use(ElMoment)
  .use(VMdEditor)
  .use(VMdPreview)
  .use(ElementPlus, { locale: zhCn })
  .mount('#app')

export default app
