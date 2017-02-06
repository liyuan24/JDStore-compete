var slideIndex = 1;
$(document).ready(function(){
	$(window).load(function(){
		showSlide(slideIndex);
	});
});

function plusSlides(n){ showSlide(slideIndex += n); }

function currentSlides(n){ showSlide(slideIndex = n) }

function showSlide(n){
	var i;
	var slides = $(".mySlide");
	var dots = $(".dot");
	var len = slides.length;
	if (n > len) { slideIndex = 1; }
	if (n < 1) { slideIndex = len; }
	for(i = 0; i < len; ++i){
		slides[i].style.display = "none";
		dots[i].className = dots[i].className.replace(" active-slide", "");
	}
	slides[slideIndex - 1].style.display = "block";
	dots[slideIndex - 1].className += " active-slide";
}