
/*  http://stackoverflow.com/questions/386281/how-to-implement-select-all-check-box-in-html */
function toggle_qel(source) {
  checkboxes = document.getElementsByName('check_qel');
  for(var i in checkboxes)
    checkboxes[i].checked = source.checked;
}

