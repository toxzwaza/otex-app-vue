<script setup>

</script>
<template>
  <p class="text-2xl text-center font-bold text-gray-400 font-serif mb-4">
    ニックネームを決めてください。
  </p>

  <div class="flex justify-between mb-8">
    <input
      type="text"
      name="NickName"
      id=""
      v-model="form.NickName"
      class="bg-transparent w-4/5"
    />
    <button
      @click="changePage"
      type="button"
      class="bg-transparent hover:bg-gray-500 text-gray-700 font-semibold hover:text-white py-2 px-4 border border-gray-500 hover:border-transparent rounded"
    >
      登録
    </button>
  </div>

  <img class="opacity-20 w-45 mx-auto" src="/nickname.png" alt="" />
</template>
