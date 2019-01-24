const { environment } = require('@rails/webpacker')
const vue =  require('./loaders/vue')

const config = environment.toWebpackConfig()

config.resolve.alias = {
    'vue$': 'vue/dist/vue.esm.js'
}

environment.loaders.append('vue', vue)
module.exports = environment
