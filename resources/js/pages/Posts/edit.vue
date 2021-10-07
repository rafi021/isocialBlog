<template>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header d-flex justify-content-between align-items-center">
             <h5 class="mb-0"> Post Create Component</h5>
             <router-link :to="{name: 'post-index'}" class="btn btn-primary">Back to Posts</router-link>
        </div>
          <div class="card-body">
              <form @submit.prevent="postUpdate">
                  <div class="form-group">
                    <label for="categoryName">Post Category</label>
                    <select name="category_id" id="customSelect1" class="custom-select" v-model="form.category_id">
                        <option :value="category.id" v-for="category in categories" :key="category.id">{{ category.name }}</option>
                    </select>
                    <small class="text-danger" v-if="errors.category_id">{{ errors.category_id[0] }}</small>
                  </div>
                  <div class="form-group">
                    <label for="postTitle">Post Title</label>
                    <input type="text" name="post_title" id="" class="form-control" v-model="form.post_title" placeholder="Enter Post Title">
                    <small class="text-danger" v-if="errors.post_title">{{ errors.post_title[0] }}</small>
                  </div>
                  <div class="form-group">
                    <label for="postBody">Post Body</label>
                    <!-- <textarea name="post_body" id="postBody" v-model="form.post_body" cols="60" rows="10"></textarea> -->
                    <ckeditor :editor="editor" v-model="form.post_body" :config="editorConfig"></ckeditor>
                    <small class="text-danger" v-if="errors.post_body">{{ errors.post_body[0] }}</small>
                  </div>

                  <div class="form-group">
                    <label for="tagsPost">Post Tags</label>
                    <input type="text" name="post_tags" v-model="form.post_tags" id="" class="form-control" placeholder="Post tags eg: new, science, business">
                    <small class="text-danger" v-if="errors.post_tags">{{ errors.post_tags[0] }}</small>
                  </div>

                  <div class="form-group">
                    <div class="custom-file">
                        <input type="file" name="post_banner" class="custom-file-input" id="product-image" @change="onFileSelected">
                        <label class="custom-file-label">Post Banner Upload</label>
                        <small class="text-danger" v-if="errors.post_banner">{{ errors.post_banner[0] }}</small>
                    </div>
                </div>
                <div class="col-md-12 col-12" v-show="form.new_image !=null">
                    <div class="form-group">
                        <img :src="form.new_image" alt="" style="height: 100px; width: 100px" class="rounded mx-auto d-block">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
              </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { Form } from 'vform';
import ClassicEditor from '@ckeditor/ckeditor5-build-classic';;

export default {
    name: 'postEdit',
    mounted(){
        this.getPostCategories();
        this.getPost();
    },
    data(){
        return{
            form: new Form({
                post_title: null,
                post_body: '',
                post_banner: null,
                category_id: null,
                category_name: null,
                post_tags: null,
                new_image: null
            }),
            categories: {},
            errors: {},
            editor: ClassicEditor,
            editorData: '<p>Content of the editor.</p>',
            editorConfig: {
                // The configuration of the editor.
            },
        }
    },
    methods: {
        getPost(){
            let id = this.$route.params.id;
            axios.get(`/api/posts/${id}`)
            .then((res) => {
                console.log(res.data)
                this.form.post_title = res.data.name
                this.form.post_body = res.data.post_body
                this.form.post_banner = res.data.post_banner
                this.form.category_id = res.data.category_id
                this.form.post_tags = res.data.tags
                this.form.category_name = res.data.category_name
            })
            .catch((err) => {
                console.log(err)
            })
        },
        getPostCategories(){
            axios.get('/api/categories')
            .then((res) => {
                console.log(res.data)
                this.categories = res.data
            });
        },
        postUpdate(){
            let id = this.$route.params.id;
            axios.put(`/api/posts/${id}`, this.form)
            .then((res) => {
                console.log(res.data);
                this.form.category_id = '';
                this.$router.push({name: 'post-index'})
                this.$toast.success({
                    title: res.data.alert_type,
                    message: res.data.message,
                })

            }).catch((err) => {
                this.errors = err.res.data.errors;
            })
        },
            onFileSelected(event){
                let file = event.target.files[0];  // get the file details
                if(file.size > 1048770){
                    // Notification.image_validation();
                }else{
                    let reader = new FileReader();
                    //console.log(reader);
                    reader.onloadend = file => {
                        this.form.new_image  = reader.result;
                        // console.log(event.target.result)
                    };
                    reader.readAsDataURL(file);
                }
            }
    }
};
</script>

<style>
</style>
