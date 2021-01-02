<demo>
支持显示加载中
</demo>

<template>
  <Button theme="text" lever="main" loading>加载中</Button>
  <Button theme="text" lever="main" >加载中</Button>

</template>
<script lang="ts">
import Button from "../lib/Button.vue";
export default {
  components: {
    Button
  },
};
</script>