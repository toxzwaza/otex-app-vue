<script setup>
import MainLayout from "@/Layouts/MainLayout.vue";
import axios from "axios";

import { ref, onMounted } from "vue";

const count = ref();
const last_created_at = ref('');


const getCount = () => {
  axios
    .get(route("getCount"))
    .then((res) => {
      console.log(res.data.last_created_at);

      last_created_at.value = res.data.last_created_at;
      count.value = res.data.count;
    })
    .catch((e) => {
      if (confirm("カウント取得でエラーが発生しました。再度実行しますか？")) {
        getCount();
      }
    });
};

const addCount = (user_attribute_id) => {
  axios
    .post(route("count.store"), {
      attribute_id: user_attribute_id,
    })
    .then((res) => {
      getCount();
    })
    .catch((e) => {
      console.log("error:", e);
    });
};

onMounted(() => {
  getCount();
});
</script>
<template>
  <MainLayout>
    <section class="text-gray-600 body-font">
      <div class="container px-5 py-24 mx-auto">
        <div class="flex flex-col text-center w-full mb-28">
          <h2
            class="text-lg text-indigo-500 tracking-widest font-medium title-font mb-1"
          >
            来場者数カウント
          </h2>

          <h1 class="text-6xl font-medium title-font text-gray-600 mt-16 mb-4">
            {{ count ? count : "取得中" }}
          </h1>
          <p>{{ new Date(last_created_at).toLocaleString('ja-JP', { year: 'numeric', month: '2-digit', day: '2-digit', hour: '2-digit', minute: '2-digit', second: '2-digit' }) }}</p>
          <button
            @click="getCount"
            class="mx-auto py-3 w-1/4 mt-4 mb-2 bg-transparent hover:bg-gray-500 text-gray-700 font-semibold hover:text-white px-4 border border-gray-500 hover:border-transparent rounded"
          >
            更新
          </button>
        </div>

        <div class="mb-24 flex flex-wrap -m-4">
          <div class="w-1/2 mx-auto">
            <h2 class="pb-4 border-b-2 font-bold mb-4 text-2xl text-center">
              高校生
            </h2>
            <div class="p-4 flex justify-between items-center">
              <button
                @click="addCount(1)"
                class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded w-1/3"
              >
                男性
              </button>
              <button
                @click="addCount(2)"
                class="bg-pink-500 hover:bg-pink-700 text-white font-bold py-2 px-4 rounded w-1/3"
              >
                女性
              </button>
            </div>
          </div>
        </div>
        <div class="mb-24 flex flex-wrap -m-4">
          <div class="w-1/2 mx-auto">
            <h2 class="pb-4 border-b-2 font-bold mb-4 text-2xl text-center">
              大学生
            </h2>
            <div class="p-4 flex justify-between items-center">
              <button
                @click="addCount(3)"
                class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded w-1/3"
              >
                男性
              </button>
              <button
                @click="addCount(4)"
                class="bg-pink-500 hover:bg-pink-700 text-white font-bold py-2 px-4 rounded w-1/3"
              >
                女性
              </button>
            </div>
          </div>
        </div>
        <div class="mb-24 flex flex-wrap -m-4">
          <div class="w-1/2 mx-auto">
            <h2 class="pb-4 border-b-2 font-bold mb-4 text-2xl text-center">
              社会人
            </h2>
            <div class="p-4 flex justify-between items-center">
              <button
                @click="addCount(5)"
                class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded w-1/3"
              >
                男性
              </button>
              <button
                @click="addCount(6)"
                class="bg-pink-500 hover:bg-pink-700 text-white font-bold py-2 px-4 rounded w-1/3"
              >
                女性
              </button>
            </div>
          </div>
        </div>
      </div>
    </section>
  </MainLayout>
</template>
