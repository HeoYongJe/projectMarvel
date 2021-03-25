/* 검색 */
function filter() {
  let search = document.getElementById("search").value.toLowerCase();
  let listInner = document.getElementsByClassName("movie-list-item");

  for (let i = 0; i < listInner.length; i++) {
    title = listInner[i].getElementsByClassName("movie-list-item-title");
    desc = listInner[i].getElementsByClassName("movie-list-item-desc");
    if (
      desc[0].innerHTML.toLowerCase().indexOf(search) != -1 ||
      title[0].innerHTML.toLowerCase().indexOf(search) != -1
    ) {
      listInner[i].style.display = "flex";
    } else {
      listInner[i].style.display = "none";
    }
  }
}

/* 해시태그 메뉴 */
function filterItem(obj) {
  const all = "";
  const hulk = "헐크";
  const iron = "아이언맨";
  const spider = "스파이더맨";

  // 파라미터
  if (obj == "hulk") {
    obj = hulk;
  } else if (obj == "iron") {
    obj = iron;
  } else if (obj == "spider") {
    obj = spider;
  } else {
    obj = all;
  }

  // 클릭 이벤트
  let listInner = document.getElementsByClassName("movie-list-item");
  for (let i = 0; i < listInner.length; i++) {
    titleText = listInner[i].getElementsByClassName("movie-list-item-title");
    titleSelectText = titleText[0].innerHTML;

    if (titleSelectText.indexOf(obj) != -1) {
      listInner[i].style.display = "flex";
    } else {
      listInner[i].style.display = "none";
    }
  }
}

/* 모달 */
const modalBtn1 = document.querySelector(".button1");
const modalBtn2 = document.querySelector(".button2");
const modalBtn3 = document.querySelector(".button3");

const modalBg1 = document.querySelector(".modal1");
const modalBg2 = document.querySelector(".modal2");
const modalBg3 = document.querySelector(".modal3");

const modalClose1 = document.querySelector(".close1");
const modalClose2 = document.querySelector(".close2");
const modalClose3 = document.querySelector(".close3");

modalBtn1.addEventListener("click", function () {
  modalBg1.classList.add("bg-active");
});

modalBtn2.addEventListener("click", function () {
  modalBg2.classList.add("bg-active");
});

modalBtn3.addEventListener("click", function () {
  modalBg3.classList.add("bg-active");
});

modalClose1.addEventListener("click", function () {
  modalBg1.classList.remove("bg-active");
});

modalClose2.addEventListener("click", function () {
  modalBg2.classList.remove("bg-active");
});

modalClose3.addEventListener("click", function () {
  modalBg3.classList.remove("bg-active");
});

/* 모달 동영상 제어 */

let url1 = $(".clip1").attr("src");
let url2 = $(".clip2").attr("src");
let url3 = $(".clip3").attr("src");

// 모달 열때 동영상 불러오기
$(".button1").on("click", function () {
  $(".clip1").attr("src", url1);
});

$(".button2").on("click", function () {
  $(".clip2").attr("src", url2);
});

$(".button3").on("click", function () {
  $(".clip3").attr("src", url3);
});

// 모달 닫을때 동영상 종료
$(".modal-close").on("click", function () {
  $(".modal-clip").attr("src", "");
});

// 모바일 메뉴버튼
const $menuItem = document.getElementsByClassName("menuItem");
const $mainMenu = document.getElementById("mainMenu");
const $closeBtn = document.getElementById("closeBtn");
const $mobileBtn = document.getElementById("mobileBtn");

for (let i = 0; i < $menuItem.length; i++) {
  $menuItem[i].addEventListener("click", function () {
    mainMenu.classList.remove("on");
    mobileBtn.style.display = "block";
    closeBtn.style.display = "none";
  });
}

$mobileBtn.addEventListener("click", function () {
  itemList.classList.add("on");
  mobileBtn.style.display = "none";
  closeBtn.style.display = "block";
});

$closeBtn.addEventListener("click", function () {
  itemList.classList.remove("on");
  mobileBtn.style.display = "block";
  closeBtn.style.display = "none";
});
