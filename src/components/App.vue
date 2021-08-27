<template>
  <img alt="Vue logo" src="../assets/logo.png">
  <HelloWorld msg="Vue.js + Bulma + SASS"/>
</template>

<script>
import HelloWorld from './HelloWorld.vue'

export default {
  name: 'App',
  components: {
    HelloWorld
  }
}
</script>

<style lang="scss">
@use "../theme/theme";

#app {
  font-family: theme.$family-sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: theme.$primary;
  margin-top: 60px;
}
</style>
