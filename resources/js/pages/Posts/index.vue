<template>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h3>Post List</h3>
                <div class="blog-entry ftco-animate d-md-flex fadeInUp ftco-animated" v-for="(post) in posts" :key="post.post_id">
                    <router-link
                    :to="{name: 'post-show', params: {id: post.post_id }}"
                        class="img img-2"
                        style="background-image:url(images/ximage_1.jpg.pagespeed.ic.bP9m1ezc08.webp)"
                    ></router-link>
                    <div class="text text-2 pl-md-4">
                        <h3 class="mb-2">
                            <router-link :to="{name: 'post-show', params: {id: post.post_id } }"> {{ post.name }}</router-link>
                        </h3>
                        <div class="meta-wrap">
                            <p class="meta">
                                <span><i class="icon-calendar mr-2"></i>{{ post.last_modified}}</span>
                                <span>
                                    <router-link :to="{name: 'post-show', params: {id: post.post_id }}"><i class="icon-folder-o mr-2"></i>{{ post.category_name }}</router-link>
                                </span>
                                <span><i class="icon-comment2 mr-2"></i>5 Comment</span>
                            </p>
                        </div>
                        <p class="mb-4"  v-html="post.post_body">
                        </p>
                        <p>
                            <router-link :to="{name: 'post-show', params: {id: post.post_id }}" class="btn-custom"
                                >Read More
                                <span class="ion-ios-arrow-forward"></span
                            ></router-link>
                        </p>
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
import axios from "axios";
export default {
    name: 'postCreate',
    mounted() {
        this.getPosts();
        this.getPostCategories();
    },
    data() {
        return {
            posts: [],
            categories: [],
            errors: {}
        };
    },
    methods: {
        getPosts() {
            axios
                .get("/api/posts")
                .then(res => {
                    //console.log(res.data);
                    this.posts = res.data;
                })
                .catch(res => {
                    console.log(res.data.errors);
                });
        },
        getPostCategories(){
            axios.get('/api/categories')
            .then((res) => {
                //console.log(res.data)
                this.categories = res.data
            });
        },
    }
};
</script>

<style></style>
