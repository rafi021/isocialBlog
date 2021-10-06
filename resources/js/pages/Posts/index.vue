<template>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header d-flex justify-content-between align-items-center">
             <h5 class="mb-0"> Post List Component</h5>
             <router-link :to="{name: 'post-create'}" class="btn btn-primary">Create Post</router-link>
        </div>
          <div class="card-bdoy">

          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
    mounted(){
        console.log('component mounted.')
    }
};
</script>

<style>
</style>
