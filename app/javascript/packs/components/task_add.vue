<template>
  <div>
      <div class="tasks">
        <draggable :options="{group:'tasks',animation:300}">
          <div class="task" v-for="task in tasks">
            <b-alert show dismissible variant="primary">
              <draggable>{{task}}</draggable>
            </b-alert>
          </div>
        </draggable>
      </div>
    <input type="text" class="taskinput" v-model="title" placeholder="Add new task">
    <button type="button" class="btn btn-outline-primary btn-block" v-on:click="add" > タスクを追加 </button>
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
      tasks : []
    }
  },
  methods:{
    add(){
      this.tasks.push(this.title)
      this.title = ""
    }
  }
}
</script>

<style>
.body{
}

.tasks{
}

.task{
}

.taskinput{
  margin: 10px 0px;
}
</style>
