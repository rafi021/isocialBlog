import Vue from 'vue'
import VueRouter from 'vue-router'

// Load components and Pages

import Home from "../pages/Home.vue"
import PostIndex from "../pages/Posts/index.vue"
import PostShow from "../pages/Posts/show.vue"
import PostEdit from "../pages/Posts/edit.vue"
import PostCreate from "../pages/Posts/create.vue"

Vue.use(VueRouter);
const routes = new VueRouter({
    mode: 'history',
    routes: [
        { path: '/', component: Home, name: "home"},

        // Posts Routes
        { path: '/posts', component: PostIndex, name: "post-index"},
        { path: '/posts/create', component: PostCreate, name: "post-create"},
        { path: '/posts/edit', component: PostEdit, name: "post-edit"},
        { path: '/posts/show', component: PostShow, name: "post-show"},
    ]
});

export default routes;
