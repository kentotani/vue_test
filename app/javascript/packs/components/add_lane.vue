<template>
  <div class="body">
    <div class="lanes">
      <div v-bind:class="theme" style="max-width: 18rem;" v-for="newlane in newlanes">
        <div class="card-header">{{ newlane }}</div>
        <button v-on:click="change()">ChengeTheme!</button>
        <div class="card-body bg-light">
          <draggable :options="{group:'tasks',animation:300,delay:50}">
            <div class="card-title"><task :newlane="newlane"></task></div>
          </draggable>
            <div class="card-title"><add_task></add_task></div>
        </div>
      </div>
    </div>
    <div class="lanes">
      <div class="form">
        <input type="text" class="form-control" v-model="newtitle" placeholder="Add new lane">
        <button type="button" class="btn btn-outline-dark btn-block" v-on:click="add"> レーンを追加 </button>
      </div>
    </div>
  </div>
</template>

<script>
import draggable from 'vuedraggable';
import task from './task'
import add_task from './add_task'

export default {
  components: {
    draggable,
    task,
    add_task,
  },
  data(){
    return {
      newtitle: "",
      newlanes: [],
      lanes: "",
      theme: "card text-white bg-dark mb-3"
    }
  },
  methods: {
    add() {
      this.newlanes.push(this.newtitle)
      this.newtitle = ""
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
