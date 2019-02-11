<template>
  <div>
    <router-view></router-view>
  </div>
</template>

<script>
import Vue from 'vue'
import VueRouter from 'vue-router'

import EmployeeIndexPage from 'EmployeeIndexPage.vue'
import EmployeeDetailPage from 'EmployeeDetailPage.vue'
import EmployeeNewPage from 'EmployeeNewPage.vue'

const router = new VueRouter({
  routes: [
    { path: '/',
      component: EmployeeIndexPage  },
    { path: '/employees/:id(\\d+)',  // :idは数値のみに制限する
      name: 'EmployeeDetailPage',
      component: EmployeeDetailPage },
    { path: '/employees/new',
      name: 'EmployeeNewPage',
      component: EmployeeNewPage    }
  ]
})

// ref. https://jp.vuejs.org/v2/guide/plugins.html#%E3%83%97%E3%83%A9%E3%82%B0%E3%82%A4%E3%83%B3%E3%81%AE%E4%BD%BF%E7%94%A8
Vue.use(VueRouter)

export default {
  router
}
</script>

<style scoped>
</style>
