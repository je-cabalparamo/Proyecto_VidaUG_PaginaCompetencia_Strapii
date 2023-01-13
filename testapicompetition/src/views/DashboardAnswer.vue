<template>
    <div>
        <!--HeaderHome/-->
            <div class="container left">

                <!--button class="btn btn-primary right" v-on:click="newU()">ADD Answer</button-->
                <br><br>

                <table class="table table-hover">
                    <thead>
                        <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Answer</th>
                        <th scope="col">Created</th>
                        <th scope="col">Updated</th>
                        <th scope="col">Published</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="answers in AnswerList" :key="answers.id">
                        <th scope="row">{{ answers.id }}</th>
                        <td>{{ answers.atrributes.answer }}</td>
                        <td>{{ answers.atrributes.createdAt }}</td>
                        <td>{{ answers.atrributes.updatedAt }}</td>
                        <td>{{ answers.atrributes.publishedAt }}</td>
                        </tr>
                    </tbody>
                 </table>
            </div>
        <!--FooterHome /-->
    </div>
</template>

<script>
//import HeaderHome from '@/components/HeaderHome.vue';
//import FooterHome from '@/components/FooterHome.vue';
import axios from'axios'
export default {
   name: 'DashboardAnswer',
   data (){
    return{
        AnswerList:null,
        //pagina:2
       // people:[],
    }
   },
   component:{
        //HeaderHome,
        //FooterHome
   }, 
   async mounted (){
    let direccion = "http://localhost:1337/api/answers";
    axios.get(direccion).then(data => {
        console.log(data);
        this.AnswerList = data.data.data;
    });
   }
}
</script>

<style scoped>
.left{
    text-align: left;
};
.right{
    text-align: right;
};
</style>