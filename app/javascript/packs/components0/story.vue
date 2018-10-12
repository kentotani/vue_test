<template>
  <div>
    <draggable :options="{group:'tasks',animation:300,delay:50}">
      <div class="tasks" v-for="story in stories">
        <b-alert class="task" show dismissible variant="primary">
          <draggable>{{ story.name }}</draggable>
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
  data(){
    return {
      stories: [
         { name: "story01" },
         { name: "story02" },
         { name: "story03" }
      ]
    }
  },
}

</script>

<style>
.form-control {
  width: 100%;
  margin: 10px 0px;
}
</style>
