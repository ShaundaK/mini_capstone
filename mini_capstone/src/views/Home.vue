<template>
  <div class="home">
    <h1>{{ message }}</h1>
    <!-- <div v-for="product in products">  -->
    <div class="container">
      <div class="row">
        <div class="col-sm-4" v-for="product in products">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Id: {{ product.id }}</h5>
              <h5 class="card-title">Name: {{ product.name }}</h5>
              <p class="card-text">description: {{ product.description }}</p>
              <img v-bind:src="product.image" width="100px">
              <p class="card-text">price: {{product.price}}</p>
              <a v-bind:href="'/#/products/' + product.id" class="btn btn-primary">Click here</a>
            </div>
          </div>
        </div>
      </div>
    </div>
     <!--  <h3>{{product.name}}</h3>
      <h3>{{product.description}}</h3> -->
  </div>
</template>

<style>
</style>

<script>
  var axios = require("axios");
export default {
  data: function() {
    return {
      message: "Welcome to Vue.js!",
      products: [],
    };
  },
  created: function() {
    console.log(this)
     axios.get("http://localhost:3000/api/products").then(function(response) {
     console.log(response.data);
      this.products = response.data;
    }.bind(this))
  },
  methods: {},
  computed: {}
};
</script>
