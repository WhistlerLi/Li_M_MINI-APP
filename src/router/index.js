import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'

Vue.use(Router)

export default new Router({
  routes: [
    {path: '/test', name: 'HelloWorld', component: HelloWorld},
    {path: 'api/getCars', name: 'getCars' },
    {path: 'api/info', name: 'info' }
  ]
})
