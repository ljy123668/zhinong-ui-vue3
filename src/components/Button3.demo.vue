<demo>
支持 level
</demo>

<template>
  <div>
    <div>
      <Button lever="main">主要文字按钮</Button>
      <Button >文字按钮</Button>
      <Button lever="danger">危险文字按钮</Button>
    </div>
    <div>
      <Button theme="text" lever="main">主要文字按钮</Button>
      <Button theme="text">文字按钮</Button>
      <Button theme="text" lever="danger">危险文字按钮</Button>
    </div>
    <div>
      <Button theme="link" lever="main">主要链接按钮</Button>
      <Button theme="link">链接按钮</Button>
      <Button theme="link" lever="danger">危险链接按钮</Button>
    </div>
  </div>
</template>
<script lang="ts">
import Button from "../lib/Button.vue";
export default {
  components: {
    Button
  },
};
</script>