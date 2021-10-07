<template>
  <div class="container">
      <div class="row">
          <div class="col-md-8 px-md-5 py-5">
               <h3 class="aside--title mb-4">Post Details</h3>
              <div class="card">
                <img class="card-img-top" :src="post.post_banner" alt="Card image cap">
                <p><span class="badge badge-primary"> {{ post.tags }} </span></p>
                <div class="card-body">
                    <h5 class="card-title">{{ post.name }}</h5>
                    <span class="h3">[{{ post.category_name }}]</span>
                    <p class="card-text">{{ post.post_body }}</p>
                    <router-link :to="{name: 'post-edit', params: {id: post.post_id }}" class="btn btn-primary">Edit Post</router-link>
                    <a @click="deletePost(post.post_id)" class="btn btn-danger">Delete Post</a>
                </div>
                </div>

            <div class="pt-5 mt-5">
            <h3 class="mb-5 font-weight-bold">{{ post.comments_count }} Comments</h3>
            <ul class="comment-list">
                <li class="comment" v-for="(comment) in post.comments" :key="comment.id">
                <div class="vcard bio">
                </div>
                <div class="comment-body">
                <h3>{{ comment.user_id }}</h3>
                <div class="meta">{{ comment.updated_at }}</div>
                <p>{{ comment.message }}</p>
                <p><a href="#" class="reply">Reply</a></p>
                </div>
                </li>
            </ul>

            <div class="comment-form-wrap pt-5">
                <h3 class="mb-5">Leave a comment</h3>
                <form action="#" class="p-3 p-md-5 bg-light">
                <div class="form-group">
                <label for="name">Name *</label>
                <input type="text" class="form-control" id="name">
                </div>
                <div class="form-group">
                <label for="email">Email *</label>
                <input type="email" class="form-control" id="email">
                </div>
                <div class="form-group">
                <label for="message">Message</label>
                <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                </div>
                <div class="form-group">
                <input type="submit" value="Post Comment" class="btn py-3 px-4 btn-primary">
                </div>
                </form>
                </div>
                </div>
            </div>
            <div class="col-md-4">
                <h3 class="aside--title mb-4">Categories</h3>
                <div class="list-group list-group-flush shadow-sm" id="list-tab" role="tablist">
                    <router-link class="list-group-item list-group-item-action d-flex justify-content-between align-items-center" v-for="(category, index) in categories" :key="index" :to="{name: 'categories.index', params: {category: category.slug} }">{{ category.name }}
                        <span class="badge badge-primary badge-pill">{{ category.posts_count}}</span>
                    </router-link>
                </div>
            </div>
        </div>
</div>
</template>

<script>
import axios from 'axios';
export default {
    name: 'showPost',
     mounted() {
        this.getPost();
        this.getPostCategories();
    },
    data(){
        return{
            post: {},
            categories: [],
        }
    },
    methods: {
        getPost(){
            let id = this.$route.params.id;
            axios.get(`/api/posts/${id}`)
            .then((res) => {
                console.log(res.data)
                this.post = res.data
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
        deletePost(id){
            axios.delete(`/api/posts/${id}`)
            .then((res) =>{
                console.log(res.data)
                this.$router.push({name: 'post-index'})
                this.$toast.success({
                    title: res.data.alert_type,
                    message: res.data.message,
                })
            })
            .catch((err) => {
                console.log(err)
            })
        }
    }
}
</script>

<style>

</style>
