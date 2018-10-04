<template>
  <div>
    <header>
      <h1>Task</h1>
    </header>
    <hr>
    <main>
      <lane_add></lane_add>
        <p>{{ user }}</p>
    </main>
  </div>
</template>

<script>
import draggable from 'vuedraggable';
import lane_add from './lane_add'
import gql from 'graphql-tag'

const FeedQuery = gql`
{
  user {
    id
    name
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
      user: "", //レスポンスを入れるプロパティの初期化
    }
  },
  apollo: {
    user: {
      query: FeedQuery,
      loadingKey: 'loading',
    },
  },
}
</script>

<style>
</style>
