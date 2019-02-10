<template>
  <table>
    <tbody>
      <tr>
        <th>ID</th>
        <th>name</th>
        <th>department</th>
        <th>gender</th>
      </tr>
      <tr v-for="e in employees" :key="e.id">
        <td><router-link :to="{ name: 'EmployeeDetailPage', params: { id: e.id } }">{{ e.id }}</router-link></td>
        <td>{{ e.name }}</td>
        <td>{{ e.department }}</td>
        <td>{{ e.gender }}</td>
      </tr>
    </tbody>
  </table>
</template>

<script>
import axios from 'axios';

export default {
  data: function () {
    return {
      employees: []
    }
  },
  mounted () {
    axios
      .get('/api/v1/employees.json')
      .then(response => (this.employees = response.data))
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
