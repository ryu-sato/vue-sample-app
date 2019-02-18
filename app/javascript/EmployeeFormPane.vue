<template>
  <form @submit.prevent="$emit('submit')">
    <div class="alert alert-danger" v-if="errors.length != 0">
      <ul>
        <li v-for="e in errors" :key="e">{{ e }}</li>
      </ul>
    </div>
    <div class="form-group">
      <label for="employeeName">Name</label>
      <input class="form-control" id="employeeName" v-model="employee.name" type="text">
    </div>
    <div>
      <label>Department</label>
      <input class="form-control" v-model="employee.department" type="text">
    </div>
    <div>
      <label>Gender</label>
      <select class="form-control" v-model="employee.gender">
        <option>other</option>
        <option>male</option>
        <option>female</option>
      </select>
    </div>
    <div>
      <label>Birth</label>
      <input class="form-control" v-model="employee.birth" type="date">
    </div>
    <div>
      <label>Joined Date</label>
      <input class="form-control" v-model="employee.joined_date" type="date">
    </div>
    <div>
      <label>Payment</label>
      <input class="form-control" v-model="employee.payment" type="number" min="0">
    </div>
    <div>
      <label>Note</label>
      <input class="form-control" v-model="employee.note" type="text">
    </div>
    <button class="btn btn-outline-primary mt-3" type="submit">Commit</button>
  </form>
</template>

<script>
export default {
  props: {
    employee: {},
    errors: ''
  }
}
</script>

<style>
</style>
