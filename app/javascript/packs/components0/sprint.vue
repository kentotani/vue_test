<template>
  <div class="lanes">
    <div class="card text-white bg-primary mb-3" style="max-width: 36rem;">
      <div class="card-header">{{ lane }}</div>
      <div class="card-body bg-light text-dark">
        <div class="card-title"><story></story></div>
        <div class="card-title"><add_story></add_story></div>
      </div>
    </div>
  </div>
</template>

<script>
import draggable from 'vuedraggable';
import story from './story';
import add_story from './add_story';
import backlog_button from './backlog_button';

export default {
  components: {
    draggable,
    story,
    add_story,
    backlog_button,
  },
  data(){
    return {
      lane: "プロダクトバックログ",
    }
  },
}
</script>

<style>
.card-header
{
  display: flex;
}
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
