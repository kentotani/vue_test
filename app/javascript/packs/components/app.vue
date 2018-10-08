<template>
  <div>
    <header>
      <h1>Board Name</h1>
    </header>
    <hr>
    <main>
      <lane></lane>
    </main>
    <footer>
    </footer>
  </div>
</template>

<script>
import draggable from 'vuedraggable';
import lane from './lane'

export default {
  name: 'App',
  components: {
    draggable,
    lane,
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
