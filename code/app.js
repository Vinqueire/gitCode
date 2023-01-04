const textContainer = document.getElementById("textContainer");

function pokazywacztekstu() {
  if (textContainer.innerHTML === "") {
    textContainer.innerHTML =
      "Woah, you actually clicked me! ^_^ <br>You can click me again to make me disappear :O";
  } else if (
    textContainer.innerHTML ===
    "Woah, you actually clicked me! ^_^ <br>You can click me again to make me disappear :O"
  ) {
    textContainer.innerHTML = "";
  }
}
