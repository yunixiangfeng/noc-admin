/**
 * 网站配置文件
 */

const config = {
  appName: 'NOC',
  appLogo: 'https://www.gin-vue-admin.com/img/logo.png',
  showViteLogo: true
}

export const viteLogo = (env) => {
  if (config.showViteLogo) {
    const chalk = require('chalk')
    console.log(
      chalk.green(
        `> 加油,干饭人`
      )
    )
  }
}

export default config
