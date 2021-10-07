import Vue from 'vue'
import VueRouter from 'vue-router'

// Load components and Pages

import Home from "../pages/Home.vue"
import PostIndex from "../pages/Posts/index.vue"
import PostShow from "../pages/Posts/show.vue"
import PostEdit from "../pages/Posts/edit.vue"
import PostCreate from "../pages/Posts/create.vue"

import NotFound from "../pages/NotFound.vue"
Vue.use(VueRouter);
const routes = new VueRouter({
    mode: 'history',
    routes: [
        { path: '/', component: Home, name: "home"},

        // Posts Routes
        { path: '/posts', component: PostIndex, name: "post-index"},
        { path: '/posts/create', component: PostCreate, name: "post-create"},
        { path: '/posts/edit/:id', component: PostEdit, name: "post-edit"},
        { path: '/posts/show/:id', component: PostShow, name: "post-show"},

        // Not Found Route
        { path: '*', component: NotFound, name: "not-found"},
    ]
});

export default routes;
