<demo>
支持 disabled
</demo>

<template>
     <Switch v-model:value="bool" disabled />
</template>
<script lang="ts">
import Button from "../lib/Button.vue";
import Switch from "../lib/Switch.vue";
import { ref } from "vue";
export default {
  components: {
    Switch,Button
  },
  setup() {
    const bool = ref(true);
    return { bool };
  },
};
</script>