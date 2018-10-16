<template>
  <div>
    <header>
      <h1>Board Name</h1>
    </header>
    <hr>
    <main>
      <div class="lanes">
        <lane></lane>
        <add_lane></add_lane>
      </div>
    </main>
    <footer>
    </footer>
  </div>
</template>

<script>
import draggable from 'vuedraggable';
import lane from './lane'
import add_lane from './add_lane';

export default {
  name: 'App',
  components: {
    draggable,
    lane,
    add_lane,
  },
  data() {
    return {
      lanes: "",
    }
  }
}
</script>

<style>
.lanes {
  display: flex;
}
</style>
