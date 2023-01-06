const textContainer = document.getElementById("textContainer");

function pokazywacztekstu() {
  if (textContainer.innerHTML === "") {
    textContainer.innerHTML = `<span id="liniatxt1">Woah, you actually clicked me! ^_^</span> <br><span id ="liniatxt2">You can click me again to make me disappear :O</span> <br><span id = "liniatxt3">Or you can even click on the image to change it :O!!!</span> <img id="zdj1" src="hdimg0.jpg" alt="jpg">`;
  } else if (textContainer.innerHTML !== "") {
    textContainer.innerHTML = "";
  }
}

const emojiContainer = document.getElementById("emojiContainer");

function stworzramke() {
  if (emojiContainer.innerHTML === "") {
    emojiContainer.innerHTML = `🔥🔥🔥🔥🔥🔥🔥`;
  } else if (emojiContainer.innerHTML === `🔥🔥🔥🔥🔥🔥🔥`) {
    emojiContainer.innerHTML = "";
  }
}
