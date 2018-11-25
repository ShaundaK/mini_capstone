<template>
  <div class="home">
    <div class="col-sm-4">
      <div class="card">
        <div class="card-body">

          <h5 class="card-title">Name: {{ product.name }}</h5>
          <p class="card-text">Description: {{ product.description }}</p>
          <img v-bind:src="product.image_url" width="100px">
        </div>
      </div>
    </div>
  </div>
</template>

<style>
</style>

<script>
var axios = require('axios');
export default {
  data: function() {
    return {
      message: "Show component",
      product: {}
    };
  },
  created: function() {
    console.log(this);
    axios.get('http://localhost:3000/api/products/' + this.$route.params.id).then(response => {
      console.log(response.data);
      this.product = response.data;
    })
  },
  methods: {},
  computed: {}
};
</script>