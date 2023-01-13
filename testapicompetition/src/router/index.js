import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/HomeView.vue'
import DashboardAnswer from '../views/DashboardAnswer.vue'
import DashboardProject from '../views/DashboardProject.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },
  {
    path: '/dashboard_answer',
    name: 'DashboardAnswer',
    component: DashboardAnswer
  },
  {
    path: '/dashboard_project',
    name: 'DashboardProject',
    component: DashboardProject
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
