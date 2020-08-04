<template>
  <div>hi | <router-link to="/">Home</router-link>| <router-link to="/main">Main</router-link></div>
  
  <router-view></router-view>
</template>

<script>


export default {
  name: 'App',
}
</script>
