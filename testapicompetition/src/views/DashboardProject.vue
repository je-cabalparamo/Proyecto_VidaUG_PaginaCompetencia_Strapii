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
                        <th scope="col">Name</th>
                        <th scope="col">Created</th>
                        <th scope="col">Updated</th>
                        <th scope="col">Published</th>
                        <th scope="col">Description</th>
                        <th scope="col">Pitch</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="projects in ProjectList" :key="projects.id" v-on:click="editar(projects.id)">
                        <th scope="row">{{ projects.id }}</th>
                        <td>{{ projects.name }}</td>
                        <td>{{ projects.createdAt }}</td>
                        <td>{{ projects.updatedAt }}</td>
                        <td>{{ projects.publishedAt }}</td>
                        <td>{{ projects.description }}</td>
                        <td>{{ projects.pitch }}</td>
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
   name: 'DashboardProject',
   data (){
    return{
        ProjectList:null,
        //pagina:2
       // people:[],
    }
   },
   component:{
        //HeaderHome,
       // FooterHome
   }, 
   async mounted (){
    let direccion = "http://localhost:1337/api/projects";
    axios.get(direccion).then(data => {
        console.log(data);
        this.ProjectList = data.data;
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