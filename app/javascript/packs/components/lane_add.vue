<template>
  <div class="body">
    <div>
      <div class="lanes">
        <div class="lane" border-variant="primary" v-for="lane in lanes">
          <draggable :options="{group:'tasks',animation:300}">
            {{lane}}<task_add></task_add>
          </draggable>
        </div>
      </div>
    </div>
    <div class="form">
      <input type="text" class="laneinput" v-model="title" placeholder="Add new lane">
      <button type="button" class="btn btn-outline-primary btn-block" v-on:click="add"> レーンを追加 </button>
    </div>
  </div>
</template>

<script>
import draggable from 'vuedraggable';
import task_add from './task_add'

export default {
  components: {
    draggable,
    task_add,
  },
  data(){
    return {
      title: "",
      lanes: ["lane1","lane2"],
    }
  },
  methods:{
    add(){
      this.lanes.push(this.title)
      this.title = ""
    }
  }
}
</script>

<style>
.body{
  display: flex;
}

.lanes{
  display: flex;
}

.lane{
  width: 250px;
  margin: 5px;
  padding: 5px;
  border: 1px solid #000;
}

.form{
  width: 200px;
  margin: 20px 5px;
  padding: 5px;
}

.laneinput{
  margin: 10px 0px;
}
</style>
