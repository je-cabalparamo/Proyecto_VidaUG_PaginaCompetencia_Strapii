<template>
  <div class="home">
    Api tryout
    <button class="btn btn-primary right" v-on:click="page_answer()">Answers</button>
    <button class="btn btn-primary right" v-on:click="page_project()">Projects</button>
  </div>
</template>

<script>

export default {
  name: 'HomeView',
  methods:{
    page_answer(){
        this.$router.push('/dashboard_answer');
    },
    page_project(){
        this.$router.push('/dashboard_project');
    }
   },
}
</script>


<style scoped>

</style>