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
const playDemoMusic = async (soundImg) => {
  let interrupted = false;

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


// 10分毎にでもミュージックを流す

let timeout;

const resetTimeout = () => {
  clearTimeout(timeout);
  timeout = setTimeout(() => {
    playDemoMusic(document.querySelectorAll(".soundImg"));
  }, 600000);
};

document.addEventListener("click", resetTimeout);

onMounted(() => {
  const soundImg = document.querySelectorAll(".soundImg");
  console.log(soundImg, soundImg[0]);

  setTimeout(playDemoMusic(soundImg));
  resetTimeout(); // 初期タイムアウトを設定
});

</script>
<template>
  <main id="main" class="py-32">
    <div id="title" class="w-full">
      <img class="w-2/3 mx-auto" src="/d_title.png" alt="" />
    </div>

    <div class="flex items-center justify-center mt-20 my-10">
      <img
        @click="startSound(1, $event.target)"
        class="soundImg w-32"
        src="/d_1.png"
        alt=""
      />
      <img
        @click="startSound(2, $event.target)"
        class="soundImg w-32"
        src="/d_2.png"
        alt=""
      />
      <img
        @click="startSound(3, $event.target)"
        class="soundImg w-32"
        src="/d_3.png"
        alt=""
      />
      <img
        @click="startSound(4, $event.target)"
        class="soundImg w-32"
        src="/d_4.png"
        alt=""
      />
      <img
        @click="startSound(5, $event.target)"
        class="soundImg w-32"
        src="/d_5.png"
        alt=""
      />
      <img
        @click="startSound(6, $event.target)"
        class="soundImg w-32"
        src="/d_6.png"
        alt=""
      />
      <img
        @click="startSound(7, $event.target)"
        class="soundImg w-32"
        src="/d_7.png"
        alt=""
      />
      <img
        @click="startSound(8, $event.target)"
        class="soundImg w-32"
        src="/d_8.png"
        alt=""
      />
    </div>

    <div id="footer" class="mb-4 flex items-center justify-between">
      <img class="w-64 ml-24" src="/gif/01.gif" alt="" />

      <img id="walk_animation" class="w-64" src="/gif/02.gif" alt="" />

      <!-- <img class="mx-auto w-3/5" src="/d_foot.png" alt=""> -->
    </div>
  </main>
  <!-- <img src="/d_title.png " alt="" /> -->
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
