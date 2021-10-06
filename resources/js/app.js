require('./bootstrap');

import Vue from 'vue'
import routes from './router/index'


Vue.config.productionTip = false

//Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('app-header', require('./components/Header.vue').default);

const app = new Vue({
    el: '#app',
    router: routes,
});
