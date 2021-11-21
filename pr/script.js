$(".nav a").on("click", function () {
   const goToSection = "#" + $(this).attr("class");
   $(".body, html").animate({ scrollTop: $(goToSection).offset().top });
});

$(".fa-book").on("click", function () {
   $(".body, html").animate({ scrollTop: $("html").offset().top });
});
