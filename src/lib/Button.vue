<template>
  <button
    class="z-button"
    :class="classes"
    :disabled="disabled"
  >
    <span
      v-if="loading"
      class="z-loadingIndicator"
    ></span>

    <slot></slot>
  </button>

</template>

<script lang="ts">
import { computed } from "vue";
export default {
  props: {
    theme: {
      type: String,
      default: "button",
    },
    size: {
      type: String,
      default: "normal",
    },
    lever: {
      type: String,
      default: "normal",
    },
    disabled: {
      type: Boolean,
      default: false,
    },
    loading: {
      type: Boolean,
      default: false,
    },
  },
  setup(props) {
    const { theme, size, lever } = props;
    const classes = computed(() => {
      return {
        [`z-theme-${theme}`]: theme,
        [`z-size-${size}`]: size,
        [`z-lever-${lever}`]: lever,
      };
    });
    return { classes };
  },
};
</script>

<style lang="scss" >
$h: 32px;
$border-color: #d9d9d9;
$color: #333;
$blue: #40a9ff;
$radius: 4px;
$red: red;
$grey: grey;

.z-button {
  box-sizing: content-box;
  height: $h;

  padding: 0 12px;
  cursor: positer;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  white-space: nowrap;
  background: white;
  color: $color;
  border: 1px solid $border-color;
  border-radius: $radius;
  box-shadow: 0 1px 0 fade-out(black, 0.95);
  transition: background 250ms;
  & + & {
    margin-left: 58px;
  }
  &:hover,
  &:focus {
    color: $blue;
    border-color: $blue;
  }
  &:focus {
    outline: none;
  }
  &::-moz-focus-inner {
    border: 0;
  }
  &.z-theme-link {
    border-color: transparent;
    box-shadow: none;
    color: $blue;
    &:hover,
    &:focus {
      color: lighten($blue, 10%);
    }
  }
  &.z-theme-text {
    border-color: transparent;
    box-shadow: none;
    color: inherit;
    &:hover,
    &:focus {
      background: darken(white, 5%);
    }
  }

  &.z-size-big {
    font-size: 24px;
    height: 48px;
    padding: 0 16px;
  }
  &.z-size-small {
    font-size: 12px;
    height: 20px;
    padding: 0 4px;
  }
  &.z-theme-button {
    &.z-lever-main {
      background-color: $blue;
      color: white;
      border-color: $blue;
      &:hover,
      &focus {
        background-color: darken($blue, 100%);
        border-color: darken($blue, 100%);
      }
    }
    &.z-lever-danger {
      background-color: $red;
      border-color: $red;
      color: white;
      &:hover,
      &:focus {
        background-color: darken($red, 10%);
        border-color: darken($red, 10%);
      }
    }
  }

  &.z-theme-link {
    &.z-lever-danger {
      color: $red;
      &:hover,
      &:focus {
        color: darken($red, 10%);
      }
    }
  }
  &.z-theme-text {
    &.z-lever-main {
      color: $blue;
      &:hover,
      &:focus {
        color: darken($blue, 10%);
      }
    }
    &.z-lever-danger {
      color: $red;
      &:hover,
      &:focus {
        color: darken($red, 10%);
      }
    }
  }
  &.z-theme-button {
    &[disabled] {
      cursor: not-allowed;
      color: $grey;
      &:hover {
        border-color: $grey;
      }
    }
  }
  &.z-theme-link,
  &.z-theme-text {
    &[disabled] {
      cursor: not-allowed;
      color: $grey;
    }
  }
  > .z-loadingIndicator {
    width: 14px;
    height: 14px;
    display: inline-block;
    margin-right: 4px;
    border-radius: 8px;
    border-color: $blue $blue $blue transparent;
    border-style: solid;
    border-width: 2px;
    animation: gulu-spin 1s infinite linear;
  }
}
@keyframes gulu-spin {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
</style>