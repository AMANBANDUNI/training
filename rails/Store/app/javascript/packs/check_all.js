let click = true;
document.addEventListener('DOMContentLoaded',() => {
  console.log("Hii there");

  
  let check = document.querySelector('.checkall');
  check.addEventListener('click',() => {
    click? check_all() : uncheck_all();
  });

  function check_all(){
    console.log("hii where");
    let e = document.querySelectorAll(".mycheck");
    e.forEach((ele) => {
      ele.checked = true;
      // console.log('e',ele,ele.checked);
    })
    click = false;
  }

  function uncheck_all(){
    console.log("hii where");
    let e = document.querySelectorAll(".mycheck");
    e.forEach((ele) => {
      ele.checked = false;
      // console.log('e',ele,ele.checked);
    })
    click = true;
  }
})