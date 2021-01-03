<demo>
常规使用
</demo>

<template>
  <Tabs v-model:selected="x">
    <Tab title="导航1111111111">内容1</Tab>
    <Tab title="导航2">内容2</Tab>
    <Tab title="导航3">内容3</Tab>
  </Tabs>
</template>

<script>
import { Tab,Tabs }from "../lib/index";
import { ref } from "vue";
export default {
  components: {
    Tabs,
    Tab,
  },
  setup() {
    const x = ref("导航3");
    return {
      x,
    };
  },
};
</script>