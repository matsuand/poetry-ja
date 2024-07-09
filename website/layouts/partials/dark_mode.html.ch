%This is the change file for the original Hugo Documentation file.
%This is part of Japanese translation version for Hugo Documantation.

@x
<script>
  function getInitialColorMode() {
    const selectedColorPreference = window.localStorage.getItem("color-mode")
    const hasSelectedColorPreference =
      typeof selectedColorPreference === "string"
    if (hasSelectedColorPreference) {
      return selectedColorPreference
    }
@y
<script>
  function getInitialColorMode() {
    const selectedColorPreference = window.localStorage.getItem("color-mode")
    const hasSelectedColorPreference =
      typeof selectedColorPreference === "string"
    if (hasSelectedColorPreference) {
      return selectedColorPreference
    }
@z

@x
    // If no color has been selected, we check the system color mode
    const mql = window.matchMedia("(prefers-color-scheme: dark)")
    const hasMediaQueryPreference = typeof mql.matches === "boolean"
@y
    // If no color has been selected, we check the system color mode
    const mql = window.matchMedia("(prefers-color-scheme: dark)")
    const hasMediaQueryPreference = typeof mql.matches === "boolean"
@z

@x
    if (hasMediaQueryPreference) {
      return mql.matches ? "dark" : "light"
    }
@y
    if (hasMediaQueryPreference) {
      return mql.matches ? "dark" : "light"
    }
@z

@x
    // If we could not determine a preference, we default to the light mode
    return "light"
  }
@y
    // If we could not determine a preference, we default to the light mode
    return "light"
  }
@z

@x
  const initialColorMode = getInitialColorMode()
  document.documentElement.classList.add(initialColorMode)
  document.documentElement.style.setProperty("color-scheme", initialColorMode)
</script>
@y
  const initialColorMode = getInitialColorMode()
  document.documentElement.classList.add(initialColorMode)
  document.documentElement.style.setProperty("color-scheme", initialColorMode)
</script>
@z
