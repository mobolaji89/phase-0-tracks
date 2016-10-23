console.log("The script is running!")

function addGoldBorder(event) {
  //var photo = document.getElementById("cookies-cream-photo");
  event.target.style.border = "5px solid gold";
}

var photo = document.getElementById("cookies-cream-photo");
photo.addEventListener("click", addGoldBorder);
