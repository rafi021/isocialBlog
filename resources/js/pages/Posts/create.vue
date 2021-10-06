<template>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header d-flex justify-content-between align-items-center">
             <h5 class="mb-0"> Post Create Component</h5>
             <router-link :to="{name: 'post-index'}" class="btn btn-primary">Back to Posts</router-link>
        </div>
          <div class="card-body">
              <form action="">
                  <div class="form-group">
                    <label for="categoryName">Post Category</label>
                    <select name="category_id" id="customSelect1" class="custom-select" v-model="form.category_id">
                        <option :value="category.id" v-for="category in categories" :key="category.id">{{ category.name }}</option>
                    </select>
                    <small class="text-danger" v-if="errors.category_id">{{ errors.category_id[0] }}</small>
                  </div>
                  <div class="form-group">
                    <label for="postTitle">Post Title</label>
                    <input type="text" name="post_title" id="" class="form-control" placeholder="Enter Post Title">
                    <small class="text-danger" v-if="errors.post_title">{{ errors.post_title[0] }}</small>
                  </div>
                  <div class="form-group">
                    <label for="postBody">Post Body</label>
                    <textarea name="post_body" id="postBody" v-model="form.post_body" cols="60" rows="10"></textarea>
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
                <div class="col-md-12 col-12" v-show="form.post_banner !=null">
                    <div class="form-group">
                        <img :src="form.post_banner" alt="" style="height: 100px; width: 100px" class="rounded mx-auto d-block">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Add New</button>
              </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

export default {
    name: 'postCreate',
    mounted(){

    },
    data(){
        return{
            form: {
                post_title: null,
                post_body: '',
                post_banner: null,
                category_id: null,
                post_tags: null
            },
            categories: {},
            errors: {},
        }
    },
    methods: {
            onFileSelected(event){
                let file = event.target.files[0];  // get the file details
                if(file.size > 1048770){
                    // Notification.image_validation();
                }else{
                    let reader = new FileReader();
                    //console.log(reader);
                    reader.onloadend = file => {
                        this.form.post_banner = reader.result;
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
