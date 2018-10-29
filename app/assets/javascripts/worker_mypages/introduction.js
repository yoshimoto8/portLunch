// フォームを表示非表示
function introduction_mount() {
  document.getElementById("introduction-form").style.visibility ="hidden";
}

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
//更新ボタンを押した時
function pushEditedContent() {
  const introductionTextarea = document.getElementById("introduction-textarea").value;
  $.ajax({
    url: '/worker_mypages/<%= @worker.id %>',
    type: "PUT",
    data: {self_introduction: introductionTextarea},
    dataType: "json",
    success: function(data) {
        cancelEdit()
    },
    error: function(data) {
        alert("errror");
    }
});
}
