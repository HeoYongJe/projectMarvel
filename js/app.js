/* 모달 */
const modalBtn = document.querySelector(".movie-list-item-button");
const modalBg = document.querySelector(".modal-bg");
const modalClose = document.querySelector(".modal-close");

modalBtn.addEventListener("click", function(){
    modalBg.classList.add("bg-active");
});

modalClose.addEventListener("click", function(){
    modalBg.classList.remove("bg-active");
});
