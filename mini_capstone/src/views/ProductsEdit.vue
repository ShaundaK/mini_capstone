<!-- <template>
<form>
  <div class="row">
    <div class="col">
      <p> Product Name: <input type="text" class="form-control" placeholder="First name"></p>
    </div>
    <div class="col">
      <p> Product Description: <input type="text" class="form-control" placeholder="Last name"></p>
    </div>
  </div>
</form>
</template> -->

<template>
  <div class="login">
    <div class="container">
      <form v-on:submit.prevent="submit()">
        <h1>Edit</h1>
        <div class="form-group">
          <label>Product Name:</label>
          <input type="text" class="form-control" v-model="text">
        </div>
        <div class="form-group">
          <label>Product Description:</label>
          <input type="text" class="form-control" v-model="text">
        </div>
        <input type="submit" class="btn btn-primary" value="Submit">
      </form>
    </div>
  </div>
</template>