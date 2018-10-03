<template>
  <div>
    <header>
      <h1>Task</h1>
    </header>
    <hr>
    <main>
      <lane_add></lane_add>
    </main>
  </div>
</template>

<script>
import draggable from 'vuedraggable';
import lane_add from './lane_add'

export default {
  name: 'Aaa',
  components: {
    draggable,
    lane_add,
  }
}
</script>

<style>
</style>
