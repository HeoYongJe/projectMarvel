/* 모달 */
// const modalBtn = document.querySelector(".movie-list-item-button");
const modalBtn1 = document.querySelector(".button1");
const modalBtn2 = document.querySelector(".button2");
const modalBtn3 = document.querySelector(".button3");

const modalBg1 = document.querySelector(".modal1");
const modalBg2 = document.querySelector(".modal2");
const modalBg3 = document.querySelector(".modal3");

const modalClose1 = document.querySelector(".close1");
const modalClose2 = document.querySelector(".close2");
const modalClose3 = document.querySelector(".close3");


modalBtn1.addEventListener("click", function(){
    modalBg1.classList.add("bg-active");
});

modalBtn2.addEventListener("click", function(){
    modalBg2.classList.add("bg-active");
});

modalBtn3.addEventListener("click", function(){
    modalBg3.classList.add("bg-active");
});

modalClose1.addEventListener("click", function(){
    modalBg1.classList.remove("bg-active");
});

modalClose2.addEventListener("click", function(){
    modalBg2.classList.remove("bg-active");
});

modalClose3.addEventListener("click", function(){
    modalBg3.classList.remove("bg-active");
});

