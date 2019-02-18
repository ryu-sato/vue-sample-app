<template>
  <div>
    <dl class="row mb-3">
      <dt class="col-sm-3">ID</dt>
      <dd class="col-sm-9">{{ employee.id }}</dd>
      <dt class="col-sm-3">Name</dt>
      <dd class="col-sm-9">{{ employee.name }}</dd>
      <dt class="col-sm-3">Department</dt>
      <dd class="col-sm-9">{{ employee.department }}</dd>
      <dt class="col-sm-3">Gender</dt>
      <dd class="col-sm-9">{{ employee.gender }}</dd>
      <dt class="col-sm-3">Bird</dt>
      <dd class="col-sm-9">{{ employee.bird }}</dd>
      <dt class="col-sm-3">Joined Date</dt>
      <dd class="col-sm-9">{{ employee.joined_date }}</dd>
      <dt class="col-sm-3">Payment</dt>
      <dd class="col-sm-9">{{ employee.payment }}</dd>
      <dt class="col-sm-3">Note</dt>
      <dd class="col-sm-9">{{ employee.note }}</dd>
    </dl>
    <router-link :to="{ name: 'EmployeeIndexPage' }">Index</router-link>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      employee: {}
    }
  },
  mounted () {
    axios
      .get(`/api/v1/employees/${this.$route.params.id}.json`)
      .then(response => (this.employee = response.data))
  }
}
</script>

<style scoped>
</style>
