<script setup>
import { ref } from "vue";
import { router } from "@inertiajs/vue3";
defineProps({
  schools: Array,
});

const name = ref("");

const sendSchool = () => {
  router.post(route("store.school"), { name: name.value });
  name.value = "";
};
</script>
<template>
  <main class="px-16">
    <div class="bg-white">
      <div class="mx-auto max-w-screen-2xl">
        <!-- text - start -->
        <div class="mb-10 md:mb-16"></div>
        <!-- text - end -->

        <!-- form - start -->
        <form
          @submit.prevent="sendSchool"
          class="mx-auto "
        >
          <div>
            <label for="name" class="pb-4 font-bold">学校名</label>
            <input
              name="name"
              class="w-full rounded border bg-gray-50 px-3 py-2 text-gray-800 outline-none ring-indigo-300 transition duration-100 focus:ring"
              v-model="name"
              placeholder="学校名を入力してください。"
            />

            <button
              class="mt-4 border bg-blue-600 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded"
            >
              新規作成
            </button>
          </div>
        </form>
        <!-- form - end -->
      </div>
    </div>

    <section class="text-gray-600 body-font">
      <div class="container mx-auto">
        <div class="flex flex-col text-center w-full mb-20"></div>
        <div class="w-full mx-auto overflow-auto">
          <table class="table-auto w-full text-left whitespace-no-wrap">
            <thead>
              <tr>
                <th
                  class="px-4 py-6 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-100 rounded-tl rounded-bl"
                >
                  ID
                </th>
                <th
                  class="px-4 py-6 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-100"
                >
                  学校名
                </th>
                <th
                  class="px-4 py-6 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-100"
                >
                  作成日
                </th>
                <th
                  class="px-4 py-6 title-font tracking-wider font-medium text-gray-900 text-sm bg-gray-100"
                >
                  更新日
                </th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="school in schools" :key="school.id">
                <td class="px-4 py-6">{{ school.id }}</td>
                <td class="px-4 py-6">{{ school.name }}</td>
                <td class="px-4 py-6">{{ school.created_at }}</td>
                <td class="px-4 py-6 text-lg text-gray-900">
                  {{ school.updated_at }}
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </section>
  </main>
</template>
