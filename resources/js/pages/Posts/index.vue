<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12" v-for="(post) in posts" :key="post.id">
                <div class="blog-entry ftco-animate d-md-flex fadeInUp ftco-animated">
                    <router-link
                    :to="{name: 'post-show', params: {id: post.id }}"
                        class="img img-2"
                        style="background-image:url(images/ximage_1.jpg.pagespeed.ic.bP9m1ezc08.webp)"
                    ></router-link>
                    <div class="text text-2 pl-md-4">
                        <h3 class="mb-2">
                            <router-link :to="{name: 'post-show', params: {id: post.id }}"> {{ post.name }}</router-link>
                        </h3>
                        <div class="meta-wrap">
                            <p class="meta">
                                <span><i class="icon-calendar mr-2"></i>{{ post.last_modified}}</span>
                                <span>
                                    <router-link :to="{name: 'post-show', params: {id: post.id }}"><i class="icon-folder-o mr-2"></i>{{ post.category_name }}</router-link>
                                </span>
                                <span><i class="icon-comment2 mr-2"></i>5 Comment</span>
                            </p>
                        </div>
                        <p class="mb-4">
                            {{post.post_body}}
                        </p>
                        <p>
                            <router-link :to="{name: 'post-show', params: {id: post.id }}" class="btn-custom"
                                >Read More
                                <span class="ion-ios-arrow-forward"></span
                            ></router-link>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from "axios";
export default {
    mounted() {
        this.getPosts();
    },
    data() {
        return {
            posts: [],
            errors: {}
        };
    },
    methods: {
        getPosts() {
            axios
                .get("/api/posts")
                .then(res => {
                    console.log(res.data);
                    this.posts = res.data;
                })
                .catch(res => {
                    console.log(res.data.errors);
                });
        }
    }
};
</script>

<style></style>
