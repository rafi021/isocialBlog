<template>
  <div class="container">
      <div class="row">
          <div class="col-lg-8 px-md-5 py-5">
            <div class="row pt-md-4">
            <h1 class="mb-3">{{ post.name }}</h1>
            <span class="h3">[{{ post.category_name }}]</span>
            <p>{{ post.post_body }}</p>
            <br>
            <div class="card">
                <img :src="post.post_banner" alt="" class="img-fluid">
            </div>
             <p><span class="badge badge-primary"> {{ post.tags }} </span></p>
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
    },
    data(){
        return{
            post: {},
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
        }
    }
}
</script>

<style>

</style>
