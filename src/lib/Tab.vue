<template>
  <div>
    <slot />
  </div>
</template>
<script>
export default {
  props: {
    title: {
      type: String,
      default: "标题",
    },
  },
};
</script>