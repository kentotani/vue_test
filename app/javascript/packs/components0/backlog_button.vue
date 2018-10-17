<template>
  <div>
    <div class="btn-group">
      <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Action
      </button>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">Action</a>
        <a class="dropdown-item" href="#">Another action</a>
        <a class="dropdown-item" href="#">Something else here</a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="#">Separated link</a>
      </div>
  </div>
</template>

<script>
import draggable from 'vuedraggable';

export default {
  components: {
    draggable,
  },
  data(){
    return {
      title: "",
      tasks: []
    }
  },
  methods:{
    add(){
      this.tasks.push(this.title)
      this.title = ""
    }
  },
}
</script>

<style>
</style>
