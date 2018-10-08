<template>
  <div>
    <header>
      <h1>Board Name</h1>
    </header>
    <hr>
    <main>
      <lane_add></lane_add>
    </main>
    <footer>
    </footer>
  </div>
</template>

<script>
import draggable from 'vuedraggable';
import lane_add from './lane_add'

export default {
  name: 'App',
  components: {
    draggable,
    lane_add,
  },
  data() {
    return {
      lanes: "",
    }
  }
}
</script>

<style>
</style>
