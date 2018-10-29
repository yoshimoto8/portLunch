// フォームを表示非表示
$(document).ready(function(){
  document.getElementById("introduction-form").style.visibility ="hidden";
});

function editIntroduction() {
  const introductionForm = document.getElementById("introduction-form");
  const introductionContent = document.getElementById("introduction-content");
  const editBotton = document.getElementById("edit-botton");

  if (introductionForm.style.visibility === "visible") {
    introductionForm.style.visibility = "hidden";
  } else {
    introductionContent.style.visibility = "hidden"
    editBotton.style.visibility = "hidden"
    introductionForm.style.visibility = "visible";
  }
}
//キャンセルボタンを押したときの表示非表示
function cancelEdit() {
  document.getElementById("introduction-content").style.visibility = "visible"
  document.getElementById("edit-botton").style.visibility = "visible"
  document.getElementById("introduction-form").style.visibility = "hidden";
}
