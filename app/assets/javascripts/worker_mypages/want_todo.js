// フォームを表示非表示
$(document).ready(function(){
  document.getElementById("wanttodo-form").style.visibility ="hidden";
});

function editWantTodo() {
  const wantTodoForm = document.getElementById("wanttodo-form");
  const wantTodoContent = document.getElementById("wanttodo-content");
  const wantTodoEditBotton = document.getElementById("wanttodo-edit-botton");

  if (wantTodoForm.style.visibility === "visible") {
    wantTodoForm.style.visibility = "hidden";
  } else {
    wantTodoContent.style.visibility = "hidden"
    wantTodoEditBotton.style.visibility = "hidden"
    wantTodoForm.style.visibility = "visible";
  }
}
//キャンセルボタンを押したときの表示非表示
function cancelEditWantTodo() {
  document.getElementById("wanttodo-content").style.visibility = "visible"
  document.getElementById("wanttodo-edit-botton").style.visibility = "visible"
  document.getElementById("wanttodo-form").style.visibility = "hidden";
}

$(document).on("ajax:success", "#edit-want-todo", function(e) {
  cancelEditWantTodo()
  });
$(document).on("ajax:error", "#edit-want-todo", function(e) {
  // 失敗した時の処理
});
