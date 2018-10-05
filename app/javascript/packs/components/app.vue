<template>
  <div>
    <header>
      <nav class="navbar navbar-expand-md navbar-dark bg-primary">
        <b-navbar-toggle target="nav_collapse"></b-navbar-toggle>
      </nav>
      <h1>ボード名</h1>
    </header>
    <hr>
    <main>
      <lane_add></lane_add>
      <p>{{ task.title }}</p>
    </main>
    <footer>
    </footer>
  </div>
</template>

<script>
import draggable from 'vuedraggable';
import lane_add from './lane_add'
import gql from 'graphql-tag'

const FeedQuery = gql`
{
  task(lane_id: "1"){
    id
    title
    lane_id
  }
}
`
export default {
  name: 'App',
  components: {
    draggable,
    lane_add,
  },
  data() {
    return {
      task: "", //レスポンスを入れるプロパティの初期化
    }
  },
  apollo: {
    task: {
      query: FeedQuery,
      loadingKey: 'loading',
    },
  },
}
</script>

<style>
</style>
