<template>
  <div class="lanes">
    <div v-bind:class="theme" style="max-width: 18rem;" v-for="lane in lanes">
      <div class="card-header">{{ lane.title }}</div>
      <button v-on:click="change()">ChengeTheme!</button>
      <div class="card-body bg-light">
        <div class="card-title"><task :lane="lane"></task></div>
        <div class="card-title"><add_task></add_task></div>
      </div>
    </div>
  </div>
</template>

<script>
import draggable from 'vuedraggable';
import task from './task';
import add_task from './add_task';
import gql from 'graphql-tag';

const get_lane = gql`
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
    add_task,
  },
  data(){
    return {
      lanes: "",
      theme: "card text-white bg-dark mb-3"
    }
  },
  apollo: {
    lanes: {
      query: get_lane,
      loadingKey: 'loading',
    },
  },
  methods: {
    change() {
      this.theme = "card text-white bg-primary mb-3"
    }
  },
}
</script>

<style>
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
</style>
