<script setup>
import { onMounted } from "vue";
defineProps({
  answers: Array,
});
const changeExhibition = (ans2) => {
  let returnText = "";
  switch (ans2) {
    case 1:
      // ここに処理を追加
      returnText = "DX化";
      break;
    case 2:
      // ここに処理を追加
      returnText = "ハニ造音検査";
      break;
    case 3:
      // ここに処理を追加
      returnText = "内視鏡検査";
      break;
    case 4:
      // ここに処理を追加
      returnText = "砂込め体験";
      break;
    default:
      break;
  }
  return returnText;
};
</script>
<template>
  <main id="main_container">
    <img class="background_img" src="/signage_bk.png" alt="" />
    <h1
      class="top_title w-full absolute top-56 font-serif text-gray-600 text-7xl text-center font-bold"
    >
      アンケートのご協力ありがとうございます！
    </h1>

    <section class="absolute top-80 text-gray-600 body-font w-full">
      <div class="container px-5 py-24 mx-auto">
        <div class="flex flex-col text-center w-full mb-20">
          <h1 class="text-6xl font-medium title-font text-gray-700 font-mono mb-8">
            アンケート結果
          </h1>
          <p class="text-2xl w-full mx-auto leading-relaxed font-serif ">
            本日のアンケート結果は、次回の展示やこれからの採用活動にて使用させていただきます。
          </p>
        </div>
        <div class="lg:w-full w-full mx-auto overflow-auto">
          <table class="table-auto w-full text-left whitespace-no-wrap">
            <thead>
              <tr>
                <th
                  class="whitespace-nowrap px-4 py-3 title-font tracking-wider font-medium text-gray-800 text-xl bg-gray-100 rounded-tl rounded-bl"
                >
                  ニックネーム
                </th>
                <th
                  class="whitespace-nowrap px-4 py-3 title-font tracking-wider font-medium text-gray-800 text-xl bg-gray-100"
                >
                  学校
                </th>
                <th
                  class="whitespace-nowrap px-4 py-3 title-font tracking-wider font-medium text-gray-800 text-xl bg-gray-100"
                >
                  学年
                </th>
                <th
                  class="whitespace-nowrap px-4 py-3 title-font tracking-wider font-medium text-gray-800 text-xl bg-gray-100"
                >
                  性別
                </th>
                <th
                  class="whitespace-nowrap px-4 py-3 title-font tracking-wider font-medium text-gray-800 text-xl bg-gray-100"
                >
                  展示の満足度
                </th>
                <th
                  class="whitespace-nowrap px-4 py-3 title-font tracking-wider font-medium text-gray-800 text-xl bg-gray-100"
                >
                  印象に残った展示
                </th>
                <th
                  class="whitespace-nowrap px-4 py-3 title-font tracking-wider font-medium text-gray-800 text-xl bg-gray-100"
                >
                  弊社認知度
                </th>
                <th
                  class="whitespace-nowrap px-4 py-3 title-font tracking-wider font-medium text-gray-800 text-xl bg-gray-100"
                >
                  鋳造認知度
                </th>
                <th
                  class="whitespace-nowrap px-4 py-3 title-font tracking-wider font-medium text-gray-800 text-xl bg-gray-100"
                >
                  感想
                </th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="answer in answers" :key="answer.id">
                <!-- ニックネーム -->
                <td class="whitespace-nowrap px-8 py-16 text-xl font-mono ">
                  {{ answer.nickName }}
                </td>
                <!-- 学校 -->
                <td class="whitespace-nowrap px-8 py-16 text-xl">
                  {{ answer.school }}fdsfasfdsaf
                </td>
                <!-- 学年 -->
                <td class="whitespace-nowrap px-8 py-16 text-xl">
                  {{ answer.grade }}年
                </td>
                <!-- 性別 -->
                <td class="whitespace-nowrap px-8 py-16 text-xl">
                  <img
                    v-if="answer.gender == 1"
                    class=""
                    src="/man.png"
                    alt=""
                  />
                  <img
                    v-if="answer.gender == 2"
                    class=""
                    src="/weman.png"
                    alt=""
                  />
                </td>
                <!-- 展示の満足度 -->
                <td class="whitespace-nowrap px-8 py-16 text-xl flex justify-center">
                  <img
                    v-if="answer.ans1 == 1"
                    class="w-8"
                    src="/face1.png"
                    alt=""
                  />
                  <img
                    v-if="answer.ans1 == 2"
                    class="w-8"
                    src="/face2.png"
                    alt=""
                  />
                  <img
                    v-if="answer.ans1 == 3"
                    class="w-8"
                    src="/face3.png"
                    alt=""
                  />
                  <img
                    v-if="answer.ans1 == 4"
                    class="w-8"
                    src="/face4.png"
                    alt=""
                  />
                  <img
                    v-if="answer.ans1 == 5"
                    class="w-8"
                    src="/face5.png"
                    alt=""
                  />
                </td>
                <!-- 印象に残った展示 -->
                <td class="whitespace-nowrap px-8 py-16 text-xl">
                  {{ changeExhibition(answer.ans2) }}
                </td>
                <!-- 弊社認知度 -->
                <td class="whitespace-nowrap px-8 py-16  ">
                  <img
                    v-if="answer.ans3 == 1"
                    class="w-8"
                    src="/ok.png"
                    alt=""
                  />
                  <img
                    v-if="answer.ans3 == 2"
                    class="w-8"
                    src="/ng.png"
                    alt=""
                  />
                </td>
                <!-- 鋳造認知度 -->
                <td class="whitespace-nowrap px-8 py-16  ">
                  <img
                    v-if="answer.ans4 == 1"
                    class="w-8"
                    src="/ok.png"
                    alt=""
                  />
                  <img
                    v-if="answer.ans4 == 2"
                    class="w-8"
                    src="/ng.png"
                    alt=""
                  />
                </td>
                <!-- 感想 -->
                <td class="px-8 py-16 text-xl w-1/4">
                  {{ answer.ans5 }}
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </section>
  </main>
</template>

<style>
html {
  overflow: hidden;
}
body {
  margin: 0;
  overflow: hidden;
}
#main_container {
  position: relative;
  height: 100vh;
  width: 100vw;
  overflow: hidden;
}
#main_container .background_img {
  position: absolute;
  z-index: -1;

  height: 100%;
  width: 100%;
  object-fit: cover;
}
</style>