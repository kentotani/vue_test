<template>
  <div>
    <draggable :options="{group:'tasks',animation:300,delay:50}">
      <div class="tasks" v-for="task in lane.tasks.edges">
        <b-alert class="task" show dismissible variant="dark">
          <draggable>【{{ task.node.title }}】</draggable>
        </b-alert>
      </div>
    </draggable>
  </div>
</template>

<script>
import draggable from 'vuedraggable';

export default {
  components: {
    draggable,
  },
  props: [ "lane" ],
  data(){
    return {
      title: "",
      lane: [],
    }
  },
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

<!-- <div class="tasks" v-for="task in tasks">
  <b-alert class="task" show dismissible variant="dark">
    <draggable>{{task.title}}【{{task.id}}】</draggable>
  </b-alert>
</div> -->


<!-- <div class="tasks" v-for="etask in ltask">
<div class="tasks" v-for="ntask in etask">
<div class="tasks" v-for="stask in ntask">
<div class="tasks" v-for="atask in stask"> -->

<!-- </div>
</div>
</div>
</div> -->
