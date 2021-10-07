
import Vue from 'vue'
import routes from './router/index'
import CKEditor from '@ckeditor/ckeditor5-vue2'
require('./bootstrap');

// Toastr setup
import CxltToastr from 'cxlt-vue2-toastr'
import 'cxlt-vue2-toastr/dist/css/cxlt-vue2-toastr.css'

Vue.config.productionTip = false


//Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('app-header', require('./components/Header.vue').default);


var toastrConfigs = {
    position: 'top right',
    showDuration: 1000,
    timeOut: 5000,
    closeButton: true,
    showMethod: 'fadeIn',
    hideMethod: 'faseOut',
}

Vue.use(CxltToastr, toastrConfigs)
Vue.use(CKEditor);

const app = new Vue({
    el: '#app',
    router: routes,
});
