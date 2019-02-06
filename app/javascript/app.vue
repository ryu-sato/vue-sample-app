<template>
  <div id="app">
    <table>
      <tbody>
        <tr>
          <th>name</th>
          <th>birth</th>
          <th>department</th>
          <th>gender</th>
          <th>joined_date</th>
          <th>payment</th>
          <th>note</th>
        </tr>
        <tr v-for="e in employees" :key="e.id">
          <td>{{ e.name }}</td>
          <td>{{ e.birth }}</td>
          <td>{{ e.department }}</td>
          <td>{{ e.gender }}</td>
          <td>{{ e.joined_date }}</td>
          <td>{{ e.payment }}</td>
          <td>{{ e.note }}</td>
        </tr>
      </tbody>
    </table>
  </div>
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
