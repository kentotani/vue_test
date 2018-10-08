<template>
  <div class="body">
    <div class="lanes">
      <div v-bind:class="theme" style="max-width: 18rem;" v-for="lane in lanes">
        <div class="card-header">{{ lane.title }}【{{lane.id}}】</div>
        <button v-on:click="change()">ChengeTheme!</button>
        <div class="card-body bg-light">
          <draggable :options="{group:'tasks',animation:300,delay:50}">
            <div class="card-title"><task :lane="lane"></task></div>
          </draggable>
        </div>
      </div>
    </div>
    <div class="lanes">
      <div class="form">
        <input type="text" class="form-control" v-model="title" placeholder="Add new lane">
        <button type="button" class="btn btn-outline-dark btn-block" v-on:click="add"> レーンを追加 </button>
      </div>
    </div>
  </div>
</template>

<script>
import draggable from 'vuedraggable';
import task from './task'
import gql from 'graphql-tag'

const FeedQuery = gql`
{
  lanes {
    id
    title
    tasks{
      edges{
        node{
          id
          title
        }
      }
    }
  }
}
`
export default {
  components: {
    draggable,
    task,
  },
  data(){
    return {
      title: "",
      lanes: "",
      tasks: "",
      theme: "card text-white bg-dark mb-3"
    }
  },
  apollo: {
    lanes: {
      query: FeedQuery,
      loadingKey: 'loading',
    },
  },
  methods: {
    add() {
      this.lanes.push(this.title)
      this.title = ""
    },
    change() {
      this.theme = "card text-white bg-primary mb-3"
    }
  },
}
</script>

<style>
.body {
  display: flex;
}

.lanes {
  display: flex;
}

.card {
  width: 300px;
  margin: 10px;
  box-shadow: 0 0px 20px rgba(0,0,0,0.2);
}
.form {
  width: 240px;
  margin: 5px;
}

.form-control {
  width: 100%;
  margin: 10px 0px;
}
</style>
