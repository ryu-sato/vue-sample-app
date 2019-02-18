const { environment } = require('@rails/webpacker')

// Use vue
const vue =  require('./loaders/vue')

const config = environment.toWebpackConfig()

config.resolve.alias = {
    'vue$': 'vue/dist/vue.esm.js'
}

environment.loaders.append('vue', vue)

// Use bootstrap (with jquery, popper.js)
const webpack = require('webpack')
environment.plugins.append( // Webpacker 3.3.0 以降は set ではなく prepend を使用する
    'Provide',
    new webpack.ProvidePlugin({
        jQuery: 'jquery/dist/jquery',
        Popper: 'popper.js/dist/popper'
    })
)

module.exports = environment
