
$( document ).ready( function() {
    $(".word-img-blurb").each(function(){
        let blurb = $(this);
        let textHeight = $(blurb.find(".text-blurb")).height();
        $(blurb.find(".img-blurb")).width(textHeight);
    });
});