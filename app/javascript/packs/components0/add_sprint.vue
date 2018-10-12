<template>
  <div class="body">
    <div class="lanes">
      <div class="card text-white bg-primary mb-3" style="max-width: 36rem;" v-for="newlane in newlanes">
        <div class="card-header">{{ newlane }}</div>
        <div class="card-body bg-light">
            <div class="card-title"><add_story></add_story></div>
        </div>
      </div>
    </div>
    <div class="lanes">
      <div class="form">
        <input type="text" class="form-control" v-model="newtitle" placeholder="Add new sprint">
        <button type="button" class="btn btn-outline-primary btn-block" v-on:click="add"> 新しいスプリント </button>
      </div>
    </div>
  </div>
</template>

<script>
import draggable from 'vuedraggable';
import story from './story'
import add_story from './add_story'

export default {
  components: {
    draggable,
    add_story,
  },
  data(){
    return {
      newtitle: "",
      newlanes: [],
    }
  },
  methods: {
    add() {
      this.newlanes.push(this.newtitle)
      this.newtitle = ""
    },
  },
}
</script>

<style>
.card {
  width: 500px;
  margin: 10px;
  box-shadow: 5px 5px 10px #000;
  -webkit-box-shadow: 5px 5px 10px #000;
  -moz-box-shadow: 5px 5px 10px #000;

}

.form {
  width: 480px;
  margin: 5px;
}

.form-control {
  width: 100%;
  margin: 10px 0px;
}
</style>
