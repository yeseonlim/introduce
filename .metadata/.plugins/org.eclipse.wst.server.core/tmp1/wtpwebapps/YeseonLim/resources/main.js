const content = "안녕하세요, 제 홈페이지에 오신것을 환영합니다^^";
const text = document.querySelector(".content1 h1");
let textIdx = 0;

function typing(){
    let txt = content[textIdx++];
    text.innerHTML += txt;

    if (textIdx > content.length) {
        text.textContent = "";
        textIdx = 0;
    }
}
setInterval(typing, 200);

/* slide */
var slides = document.querySelector('.slides'),
	slide = document.querySelectorAll('.slides li'),
	currentIdx = 0,
	slideCount = slide.length,
	prevBtn = document.querySelector('.prev'),
	slideWidth = 300,
	slideMargin = 30,
	nextBtn = document.querySelector('.next');
	
	slides.style.width = (slideWidth + slideMargin)*slideCount -slideMargin+'px';
	function moveSlide(num){
		slides.style.left = -num*330+'px';
		currentIdx = num;
	}
	nextBtn.addEventListener('click', function(){
		if(currentIdx < slideCount -3){
			moveSlide(currentIdx +1);
			console.log(currentIdx);
		}else{
			moveSlide(0);
		}
	});
	prevBtn.addEventListener('click', function(){
		if(currentIdx > 0){
			moveSlide(currentIdx -1);
		}else{
			moveSlide(slideCount -3);
		}
	});