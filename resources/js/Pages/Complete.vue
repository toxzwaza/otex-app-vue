<script setup>
import MainLayout from "@/Layouts/MainLayout.vue";
import { Link } from "@inertiajs/vue3";
</script>
<template>
  <MainLayout>
    <Link id="bg_container" :href="route('index')">
      <img src="/thankyou_img.png" alt="" />
    </Link>
  </MainLayout>
</template>
<style>
    .bg_container{
        height: 100%;
        width: 100%;
    }
    .bg_container img{
        height: 100%;
        width: 100%;
        object-fit: cover;
    }

</style>