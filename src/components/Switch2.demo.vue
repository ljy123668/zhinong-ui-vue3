<demo>
支持 disabled
</demo>

<template>
     <Switch v-model:value="bool" disabled />
</template>
<script lang="ts">
import { Switch,Button }from "../lib/index";
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