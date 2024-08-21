<script setup>
import MainLayout from "@/Layouts/MainLayout.vue";
import { ref, reactive } from "vue";
import MainLayoutVue from "@/Layouts/MainLayout.vue";
import { router } from "@inertiajs/vue3";

const pageNum = ref(1);
const form = reactive({
  NickName: null,
  Gender: null,
  School: null,
  Grade: null,
  Answer1: null,
  Answer2: null,
  Answer3: null,
  Answer4: null,
  Answer5: null,
});

const storeForm = () => {
  router.post(route("store"), form, {
    onBefore: ()=> {
      confirm('登録しますか？')
    }
  });
};

const checkData = (param, el) => {
  if (el) {
    changePage();
  } else {
    console.log(param);
    const element = document.querySelector(`#${param}`);
    element.classList.add("vibration-animation");
  }
};
const changePage = () => {
  pageNum.value += 1;
  console.log(pageNum.value);
};
const backPage = () => {
  if (pageNum.value < 6) {
    pageNum.value -= 1;
  }
};
</script>
<template>
  <MainLayout>
    <div id="input_div" class="px-4 py-4 bg-white">
      <p class="my-1">
        ニックネーム： <span class="text-gray-600"> {{ form.NickName }}</span>
      </p>
      <p v-if="pageNum < 6" class="my-1">
        性別：
        <span class="text-gray-600">
          {{ form.Gender == 1 ? "男性" : form.Gender == 2 ? "女性" : "" }}</span
        >
      </p>
      <p v-if="pageNum < 6" class="my-1">
        学校： <span class="text-gray-600"> {{ form.School }}</span>
      </p>
      <p v-if="pageNum < 6" class="my-1">
        学年：
        <span class="text-gray-600">
          {{
            form.Grade == 1
              ? "1年生"
              : form.Grade == 2
              ? "2年生"
              : form.Grade == 3
              ? "3年生"
              : ""
          }}</span
        >
      </p>
    </div>

    <form id="" class="" @submit.prevent="storeForm">
      <div class="form_container" id="main_form">
        <div v-if="pageNum == 1">
          <p
            id="NickName"
            class="mb-8 text-2xl text-center font-bold text-gray-600 font-serif mb-4"
          >
            ニックネームを決めてください。
          </p>

          <div class="flex justify-between mb-8">
            <input
              type="text"
              name="NickName"
              id=""
              v-model="form.NickName"
              class="bg-transparent w-4/5 px-4 text-xl"
              placeholder="アキオカ 太郎"
            />
            <button
              @click="checkData('NickName', form.NickName)"
              type="button"
              class="bg-red-400 hover:bg-red-700 text-white font-bold py-2 px-4 rounded"
            >
              登録
            </button>
          </div>

          <img
            class="max-h-72 opacity-20 w-45 mx-auto"
            src="/nickname.png"
            alt=""
          />
        </div>

        <div v-if="pageNum == 2">
          <p
            id="Gender"
            class="mb-8 text-2xl text-center font-bold text-gray-600 font-serif"
          >
            性別を教えてください。
          </p>

          <div class="flex justify-around items-center mb-8">
            <p class="w-1/2 flex justify-around">
              <span class="flex items-center">
              <label class="mr-2 text-xl text-gray-600" for="gender1"
                >男性</label
              >
              <input
                type="radio"
                name="Gender"
                v-model="form.Gender"
                id="gender1"
                value="1"
                class="input_radio ml-1"
              />
              </span>

              <span class="flex items-center">
              <label class="mr-2 text-xl text-gray-600" for="gender2"
                >女性</label
              >
              <input
                type="radio"
                name="Gender"
                v-model="form.Gender"
                id="gender2"
                value="2"
                class="input_radio ml-1"
              />
              </span>
            </p>
            <button
              @click="checkData('Gender', form.Gender)"
              type="button"
              class="bg-red-400 hover:bg-red-700 text-white font-bold py-2 px-4 rounded"
            >
              登録
            </button>
          </div>
          <img
            class="max-h-72 opacity-20 w-45 mx-auto"
            src="/gender.png"
            alt=""
          />
        </div>
        <div v-if="pageNum == 3">
          <p
            id="School"
            class="mb-8 text-2xl text-center font-bold text-gray-600 font-serif"
          >
            学校を教えてください。
          </p>

          <div class="flex justify-between mb-8">
            <select
              id=""
              name="School"
              v-model="form.School"
              class="bg-transparent w-4/5 px-4 text-xl"
            >
              <option value="1">学校１</option>
              <option value="2">学校2</option>
              <option value="3">学校3</option>
              <option value="4">学校4</option>
            </select>
            <button
              @click="checkData('School', form.School)"
              type="button"
              class="bg-red-400 hover:bg-red-700 text-white font-bold py-2 px-4 rounded"
            >
              登録
            </button>
          </div>

          <img
            class="max-h-72 opacity-20 w-45 mx-auto"
            src="/school.png"
            alt=""
          />
        </div>
        <div v-if="pageNum == 4">
          <p
            id="Grade"
            class="mb-8 text-2xl text-center font-bold text-gray-600 font-serif mb-4"
          >
            学年を教えてください。
          </p>

          <div class="flex justify-between mb-8">
            <select
              id=""
              name="Grade"
              v-model="form.Grade"
              class="bg-transparent w-4/5 px-4 text-xl"
            >
              <option value="3">３年生</option>
              <option value="2">２年生</option>
              <option value="1">１年生</option>
            </select>
            <button
              @click="checkData('Grade', form.Grade)"
              type="button"
              class="bg-red-400 hover:bg-red-700 text-white font-bold py-2 px-4 rounded"
            >
              登録
            </button>
          </div>

          <img
            class="max-h-72 opacity-20 w-45 mx-auto"
            src="/grade.png"
            alt=""
          />
        </div>
        <div v-if="pageNum == 5">
          <p
            class="text-xl text-center text-gray-600 font-serif mb-16 whitespace-nowrap"
          >
            続いて本日の展示会のアンケートに進みます。
          </p>

          <div class="baner_container" @click="changePage">
            <img src="/baner.png" alt="" />
            <img
              src="/hand.png"
              class="hand_img w-24 float-animation whitespace-normal"
              alt=""
            />
          </div>
        </div>
      </div>

      <button
        v-if="pageNum > 1 && pageNum < 6"
        class="back_page bg-white hover:bg-gray-100 text-gray-800 font-semibold py-2 px-4 border border-gray-400 rounded shadow"
        @click="backPage"
        type="button"
      >
        一つ前に戻る
      </button>

      <div v-if="pageNum == 6">
        <div id="container" class="bg_container">
          <img src="/background.png" alt="" />
          <div id="form_container">
            <div id="ans1" class="flex items-center">
              <label
                class="mr-2 text-md whitespace-nowrap w-1/6 flex items-center"
                for="ans1_1"
                >大変良い<input
                  class="ml-2"
                  type="radio"
                  name="ans1"
                  id="ans1_1"
                  value="5"
                  v-model="form.Answer1"
              /></label>
              <label
                class="mr-2 text-md whitespace-nowrap w-1/6 flex items-center"
                for="ans1_2"
                >良い<input
                  class="ml-2"
                  type="radio"
                  name="ans1"
                  id="ans1_2"
                  value="4"
                  v-model="form.Answer1"
              /></label>
              <label
                class="mr-2 text-md whitespace-nowrap w-1/6 flex items-center"
                for="ans1_3"
                >普通<input
                  class="ml-2"
                  type="radio"
                  name="ans1"
                  id="ans1_3"
                  value="3"
                  v-model="form.Answer1"
              /></label>
              <label
                class="mr-2 text-md whitespace-nowrap w-1/6 flex items-center"
                for="ans1_4"
                >やや不満<input
                  class="ml-2"
                  type="radio"
                  name="ans1"
                  id="ans1_4"
                  value="2"
                  v-model="form.Answer1"
              /></label>
              <label
                class="mr-2 text-md whitespace-nowrap w-1/6 flex items-center"
                for="ans1_5"
                >不満<input
                  class="ml-2"
                  type="radio"
                  name="ans1"
                  id="ans1_5"
                  value="1"
                  v-model="form.Answer1"
              /></label>
            </div>

            <div id="ans2" class="flex items-center">
              <label
                class="mr-6 text-md whitespace-nowrap w-1/6 flex items-center"
                for="ans1_1"
                >砂込め体験<input
                  class="ml-2"
                  type="radio"
                  name="ans2"
                  id="ans1_1"
                  value="4"
                  v-model="form.Answer2"
              /></label>
              <label
                class="mr-6 text-md whitespace-nowrap w-1/6 flex items-center"
                for="ans1_2"
                >内視鏡検査<input
                  class="ml-2"
                  type="radio"
                  name="ans2"
                  id="ans1_2"
                  value="3"
                  v-model="form.Answer2"
              /></label>
              <label
                class="mr-6 text-md whitespace-nowrap w-1/6 flex items-center"
                for="ans1_3"
                >ハニ造音検査<input
                  class="ml-2"
                  type="radio"
                  name="ans2"
                  id="ans1_3"
                  value="2"
                  v-model="form.Answer2"
              /></label>
              <label
                class="mr-6 text-md whitespace-nowrap w-1/6 flex items-center"
                for="ans1_4"
                >DX化<input
                  class="ml-2"
                  type="radio"
                  name="ans2"
                  id="ans1_4"
                  value="1"
                  v-model="form.Answer2"
              /></label>
            </div>
            <div id="ans3" class="flex items-center">
              <label
                class="mr-2 text-md whitespace-nowrap w-1/6 flex items-center"
                for="ans1_1"
                >はい<input
                  class="ml-2"
                  type="radio"
                  name="ans3"
                  id="ans1_1"
                  v-model="form.Answer3"
                  value="1"
              /></label>
              <label
                class="mr-2 text-md whitespace-nowrap w-1/6 flex items-center"
                for="ans1_2"
                >いいえ<input
                  class="ml-2"
                  type="radio"
                  name="ans3"
                  id="ans1_2"
                  v-model="form.Answer3"
                  value="2"
              /></label>
            </div>
            <div id="ans4" class="flex items-center">
              <label
                class="mr-2 text-md whitespace-nowrap w-1/6 flex items-center"
                for="ans1_1"
                >はい<input
                  class="ml-2"
                  type="radio"
                  name="ans4"
                  id="ans1_1"
                  v-model="form.Answer4"
                  value="1"
              /></label>
              <label
                class="mr-2 text-md whitespace-nowrap w-1/6 flex items-center"
                for="ans1_2"
                >いいえ<input
                  class="ml-2"
                  type="radio"
                  name="ans4"
                  id="ans1_2"
                  v-model="form.Answer4"
                  value="2"
              /></label>
            </div>
            <div id="ans5" class="w-full">
              <textarea
                name="ans5"
                id=""
                rows="5"
                cols="33"
                v-model="form.Answer5"
              ></textarea>
            </div>

            <button id="button">送信</button>
          </div>
        </div>
      </div>
    </form>
  </MainLayout>
</template>
<style>
#main_form {
  height: 40vh;
  width: 60vw;
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  margin: auto;
}

#input_div {
  position: absolute;
  top: 5%;
  left: 5%;
  z-index: 3;

  width: auto;
  height: auto;
  border: 1px solid rgba(128, 128, 128, 0.333);
}
.form_container {
  position: relative;
}
.back_page {
  position: absolute;
  bottom: 10%;
  left: 10%;
  z-index: 5;
}
.baner_container {
  position: relative;
}
.hand_img {
  position: absolute;
  right: 0;
  bottom: -50%;
}
.bg_container {
  height: 100%;
  width: 100%;
}
.bg_container img {
  height: 100%;
  width: 100%;
  object-fit: cover;
}

@keyframes float {
  0% {
    transform: translateY(0);
  }
  50% {
    transform: translateY(-10px);
  }
  100% {
    transform: translateY(0);
  }
}
@keyframes vibration {
  0% {
    transform: translateX(0);
  }
  25% {
    transform: translateX(-2px);
    color: gray;
  }
  50% {
    transform: translateX(2px);
    color: #ff4d4d;
  }
  75% {
    transform: translateX(-2px);
    color: gray;
  }
  100% {
    transform: translateX(2px);
    color: #ff4d4d;
  }
}

.vibration-animation {
  animation: vibration 0.5s ease forwards;
}

.float-animation {
  animation: float 3s ease-in-out infinite;
}

.input_radio{
  transform:scale(1.6);
  accent-color: red;
}
</style>
