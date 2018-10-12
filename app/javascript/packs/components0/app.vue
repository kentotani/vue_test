<template>
  <div>
    <header>
      <h1>Project Name</h1>
    </header>
    <main>
        <tag></tag>
    </main>
    <footer>
    </footer>
  </div>
</template>

<script>
import draggable from 'vuedraggable';
import tag from './tag'

export default {
  name: 'App',
  components: {
    draggable,
    tag,
  },
}
</script>

<style>
</style>
