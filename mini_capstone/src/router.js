import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Test from './views/Test.vue'
import ProductsShow from './views/ProductsShow.vue'
import Signup from './views/Signup.vue'
import Login from './views/Login.vue'
import ProductsEdit from './views/ProductsEdit.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    },
    {
      path: '/test',
      name: 'Test',
      component: Test
    },
    {
      path: '/products/:id',
      name: 'productsShow',
      component: ProductsShow
    },
    {
      path: '/signup',
      name: 'signup',
      component: Signup
    },
    {
      path: '/login',
      name: 'login',
      component: Login
    },
    {
      path: '/products/:id/edit',
      name: 'productsEdit',
      component: ProductsEdit
    }

  ]
})
