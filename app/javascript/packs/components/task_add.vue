<template>
  <div>
    <div>
      <draggable :options="{group:'tasks',animation:300,delay:50}">
        <div class="tasks" v-for="task in tasks">
          <b-alert class="task" show dismissible variant="dark">
            <draggable>{{ task.title }}【{{ task.lane_id }}】</draggable>
          </b-alert>
        </div>
      </draggable>
    </div>
    <div>
      <input type="text" class="form-control" v-model="title" placeholder="Add new task">
      <button type="button" class="btn btn-outline-dark btn-block" v-on:click="add" > タスクを追加 </button>
    </div>
  </div>
</template>

<script>
import draggable from 'vuedraggable';
import gql from 'graphql-tag'

const FeedQuery = gql`
{
  tasks{
    title
    lane_id
    id
  }
}
`
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
  apollo: {
    tasks: {
    query: FeedQuery,
      loadingKey: 'loading',
    },
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
.body {
}

.tasks {
}

.task {
  box-shadow: 0 0px 20px rgba(0,0,0,0.2);
}

.form-control {
  width: 100%;
  margin: 10px 0px;
}
</style>
