<template>
  <div> Button示例 </div>
  <h1>示例1</h1>
  <div>
    <Button>nihao 11</Button>

    <Button theme="button">你好</Button>

    <Button theme="link">你好</Button>

    <Button theme="text ">你好你好你好</Button>
  </div>
  <h1>示例2</h1>
  <div>
    <div>
      <Button size="big">大大大</Button>
      <Button>普普通</Button>
      <Button size="small">小小小</Button>
    </div>

  </div>
  <h1>示例3</h1>
  <div>
    <div>
      <Button lever="main">大大大</Button>
      <Button>普普通</Button>
      <Button lever="danger">小小小</Button>
    </div>

    <div>
      <Button
        theme="link"
        lever="main"
      >主要链接按钮</Button>
      <Button theme="link">链接按钮</Button>
      <Button
        theme="link"
        lever="danger"
      >危险链接按钮</Button>
    </div>
    <div>
      <Button
        theme="text"
        lever="main"
      >主要文字按钮</Button>
      <Button theme="text">文字按钮</Button>
      <Button
        theme="text"
        lever="danger"
      >危险文字按钮</Button>
    </div>

  </div>

  <h1>示例4</h1>
  <div>
    <Button
      theme="text"
      lever="main"
      disabled
    >禁用文字按钮</Button>
    <Button theme="text">文字按钮</Button>
    <Button
      theme="text"
      lever="danger"
      disabled
    >禁用危险文字按钮</Button>
  </div>
  <h1>示例5</h1>
  <div>
    <Button
      theme="text"
      lever="main"
      loading
    >加载中</Button>
    <Button
      theme="text"
      lever="main"
    >加载中</Button>

  </div>
</template>
<script lang="ts">
import Button from "../lib/Button.vue";
export default {
  components: {
    Button,
  },
};
</script>

<style lang="scss">
</style>