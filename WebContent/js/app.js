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
  const avengers = "어벤져스";
  const iron = "아이언맨";
  const spider = "스파이더맨";

  // 파라미터
  if (obj == "avengers") {
    obj = avengers;
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
const modalBtn4 = document.querySelector(".button4");
const modalBtn5 = document.querySelector(".button5");
const modalBtn6 = document.querySelector(".button6");
const modalBtn7 = document.querySelector(".button7");
const modalBtn8 = document.querySelector(".button8");
const modalBtn9 = document.querySelector(".button9");

const modalBg1 = document.querySelector(".modal1");
const modalBg2 = document.querySelector(".modal2");
const modalBg3 = document.querySelector(".modal3");
const modalBg4 = document.querySelector(".modal4");
const modalBg5 = document.querySelector(".modal5");
const modalBg6 = document.querySelector(".modal6");
const modalBg7 = document.querySelector(".modal7");
const modalBg8 = document.querySelector(".modal8");
const modalBg9 = document.querySelector(".modal9");

const modalClose1 = document.querySelector(".close1");
const modalClose2 = document.querySelector(".close2");
const modalClose3 = document.querySelector(".close3");
const modalClose4 = document.querySelector(".close4");
const modalClose5 = document.querySelector(".close5");
const modalClose6 = document.querySelector(".close6");
const modalClose7 = document.querySelector(".close7");
const modalClose8 = document.querySelector(".close8");
const modalClose9 = document.querySelector(".close9");

modalBtn1.addEventListener("click", function () {
  modalBg1.classList.add("bg-active");
});

modalBtn2.addEventListener("click", function () {
  modalBg2.classList.add("bg-active");
});

modalBtn3.addEventListener("click", function () {
  modalBg3.classList.add("bg-active");
});

modalBtn4.addEventListener("click", function () {
  modalBg4.classList.add("bg-active");
});

modalBtn5.addEventListener("click", function () {
  modalBg5.classList.add("bg-active");
});

modalBtn6.addEventListener("click", function () {
  modalBg6.classList.add("bg-active");
});

modalBtn7.addEventListener("click", function () {
  modalBg7.classList.add("bg-active");
});

modalBtn8.addEventListener("click", function () {
  modalBg8.classList.add("bg-active");
});

modalBtn9.addEventListener("click", function () {
  modalBg9.classList.add("bg-active");
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

modalClose4.addEventListener("click", function () {
  modalBg4.classList.remove("bg-active");
});

modalClose5.addEventListener("click", function () {
  modalBg5.classList.remove("bg-active");
});

modalClose6.addEventListener("click", function () {
  modalBg6.classList.remove("bg-active");
});

modalClose7.addEventListener("click", function () {
  modalBg7.classList.remove("bg-active");
});

modalClose8.addEventListener("click", function () {
  modalBg8.classList.remove("bg-active");
});

modalClose9.addEventListener("click", function () {
  modalBg9.classList.remove("bg-active");
});

/* 모달 동영상 제어 */

let url1 = $(".clip1").attr("src");
let url2 = $(".clip2").attr("src");
let url3 = $(".clip3").attr("src");
let url4 = $(".clip4").attr("src");
let url5 = $(".clip5").attr("src");
let url6 = $(".clip6").attr("src");
let url7 = $(".clip7").attr("src");
let url8 = $(".clip8").attr("src");
let url9 = $(".clip9").attr("src");

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

$(".button4").on("click", function () {
  $(".clip4").attr("src", url4);
});

$(".button5").on("click", function () {
  $(".clip5").attr("src", url5);
});

$(".button6").on("click", function () {
  $(".clip6").attr("src", url6);
});

$(".button7").on("click", function () {
  $(".clip7").attr("src", url7);
});

$(".button8").on("click", function () {
  $(".clip8").attr("src", url8);
});

$(".button9").on("click", function () {
  $(".clip9").attr("src", url9);
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

// 슬라이드

$(".slide-auto").slick({
  slidesToShow: 3,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 2000,
});

