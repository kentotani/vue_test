import Vue from 'vue/dist/vue.esm.js'
import App from './components/app.vue'

// import router from '../router/index';

// apollo
import { ApolloClient } from 'apollo-client'
import { HttpLink } from 'apollo-link-http'
import { InMemoryCache } from 'apollo-cache-inmemory'
import VueApollo from 'vue-apollo'

// Bootstrap
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
import BootstrapVue from 'bootstrap-vue'
Vue.use(BootstrapVue)

Vue.config.productionTip = false

// install the vue-momnet plugin
Vue.use(require('vue-moment'))
Vue.use(VueApollo)

const apolloProvider = new VueApollo({
  defaultClient: new ApolloClient({
    link: new HttpLink({ uri: 'http://localhost:3000/graphql' }),
    cache: new InMemoryCache()
  })
})

/* eslint-disable no-new */
new Vue({
  el: '#example',
  provide: apolloProvider.provide(),
  components: { App },
  // router,
  template: '<App/>'
})
