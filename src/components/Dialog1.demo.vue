<demo>
常规使用
</demo>

<template>
  <Button @click="toggle">打开对话框</Button>
  <Dialog
    v-model:visible="x"
    :closeOverLay="false"
    :ok="f1"
    :cancel="f2"
  >
    <template v-slot:content>
      <div> h1</div>
      <div> h2 </div>
    </template>
    <template v-slot:title>
      <strong>加粗的标题</strong>
    </template>
  </Dialog>

</template>
<script lang="ts">
import { Dialog,Button }from "../lib/index";
import { ref } from "vue";
export default {
  components: {
    Dialog,
    Button,
  },
  setup() {
    const x = ref(false);
    const toggle = () => {
      x.value = !x.value;
    };
    const f1 = () => {
      console.log("f1");
      return false;
    };
    const f2 = () => {
      console.log("f2");
    };

    return { x, toggle, f1, f2 };
  },
};
</script>