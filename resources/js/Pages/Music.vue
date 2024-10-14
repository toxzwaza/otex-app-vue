<script setup>
import { onMounted } from "vue";

const startSound = (num, e) => {
  e.classList.add("active");

  const audio = new Audio(`/sound/0${num}.mp3`);
  audio.play();

  setTimeout(() => {
    e.classList.remove("active");
  }, 400);
};
const playDemoMusic = async () => {
  let interrupted = false;
  const soundImg  = document.querySelectorAll('.soundImg');


  const handleClick = () => {
    interrupted = true;
  };

  document.addEventListener("click", handleClick);

  const playSound = async (num, img) => {
    if (interrupted) return;
    await startSound(num, img);
    await new Promise((resolve) => setTimeout(resolve, 700));
  };

  await playSound(1, soundImg[0]);
  await playSound(2, soundImg[1]);
  await playSound(3, soundImg[2]);
  await playSound(4, soundImg[3]);
  await playSound(3, soundImg[2]);
  await playSound(2, soundImg[1]);
  await playSound(1, soundImg[0]);

  await playSound(2, soundImg[2]);
  await playSound(3, soundImg[3]);
  await playSound(4, soundImg[4]);
  await playSound(5, soundImg[5]);
  await playSound(4, soundImg[4]);
  await playSound(3, soundImg[3]);
  await playSound(2, soundImg[2]);

  await playSound(1, soundImg[0]);
  await playSound(1, soundImg[0]);
  await playSound(1, soundImg[0]);
  await playSound(1, soundImg[0]);

  await playSound(1, soundImg[0]);
  await playSound(2, soundImg[1]);
  await playSound(3, soundImg[2]);
  await playSound(4, soundImg[3]);
  await playSound(3, soundImg[2]);
  await playSound(2, soundImg[1]);
  await playSound(1, soundImg[0]);

  document.removeEventListener("click", handleClick);
};
</script>
<template>
  <main id="main" class="py-32">
    <div id="title" class="w-full text-center">
      <img class="w-2/4 mx-auto" src="/d_title.png" alt="" />
      <!-- <button @click="playDemoMusic"
        class="mt-8 bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded"
      >
       サンプル再生
      </button> -->
    </div>

    <div class="flex items-center justify-center mt-20 my-10">
      <img
        @click="startSound(1, $event.target)"
        class="soundImg w-28"
        src="/d_1.png"
        alt=""
      />
      <img
        @click="startSound(2, $event.target)"
        class="soundImg w-28"
        src="/d_2.png"
        alt=""
      />
      <img
        @click="startSound(3, $event.target)"
        class="soundImg w-28"
        src="/d_3.png"
        alt=""
      />
      <img
        @click="startSound(4, $event.target)"
        class="soundImg w-28"
        src="/d_4.png"
        alt=""
      />
      <img
        @click="startSound(5, $event.target)"
        class="soundImg w-28"
        src="/d_5.png"
        alt=""
      />
      <img
        @click="startSound(6, $event.target)"
        class="soundImg w-28"
        src="/d_6.png"
        alt=""
      />
      <img
        @click="startSound(7, $event.target)"
        class="soundImg w-28"
        src="/d_7.png"
        alt=""
      />
      <img
        @click="startSound(8, $event.target)"
        class="soundImg w-28"
        src="/d_8.png"
        alt=""
      />
    </div>

    <div id="footer" class="mb-4 flex items-center justify-between">
      <img class="w-48 ml-24" src="/gif/01.gif" alt="" />

      <img id="walk_animation" class="w-48" src="/gif/02.gif" alt="" />
    </div>
  </main>

</template>
<style >
#main {
  height: 100vh;
  width: 100vw;
  overflow: hidden;
  background-image: url("/d_bg02.png");
  background-size: cover;
}

img {
  transition: all 0.1s ease-in;
}
.active {
  animation: shake 0.3s infinite;
}

@keyframes shake {
  0% {
    transform: rotate(0deg);
  }
  25% {
    transform: rotate(15deg);
  }
  50% {
    transform: rotate(0deg);
  }
  75% {
    transform: rotate(-15deg);
  }
  100% {
    transform: rotate(0deg);
  }
}
@keyframes moveRightToLeft {
  0% {
    transform: translateX(100%) scaleX(1);
  }
  49% {
    transform: translateX(-200%) scaleX(1);
  }
  50% {
    transform: translateX(-200%) scaleX(-1);
  }
  100% {
    transform: translateX(100%) scaleX(-1);
  }
}

#walk_animation {
  animation: moveRightToLeft 15s linear infinite;
}
</style>
