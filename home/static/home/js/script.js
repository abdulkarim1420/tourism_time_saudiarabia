$("#place-images").change(function(e) {

    let images_count = e.target.files.length;

    if (images_count > 0) {
        $('.custom-file-label').html("Selected " + images_count + " image" + (images_count > 1 ? "s" : "") ); 
    }  else
        $('.custom-file-label').html("Select Images ..");     
});

const preview_image = $("#image-wrapper img");
$("#images-section ul li").click((e) => {

    image_url = $(e.target).attr("src");
    preview_image.attr("src", image_url);
    $("#image-wrapper a").attr("href", image_url);

    $("#images-section ul li > img").removeClass("active-image");
    $(e.target).addClass("active-image");
});

/* Javascript */
function updateRating() {
    rating = $('#id_rating').val();
    $("#rateYo").rateYo("option", "rating", rating);
}

// Make sure that the dom is ready
$(function () {
    
    $("#rateYo").rateYo({
      rating: 0,
      fullStar: true,
      onInit: updateRating,
      onSet: (rating) => {
            $("#id_rating").val(rating);
      },
      "starSvg": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M12 .587l3.668 7.568 8.332 1.151-6.064 5.828 1.48 8.279-7.416-3.967-7.417 3.967 1.481-8.279-6.064-5.828 8.332-1.151z"/></svg>'
    });
   
  });

// Search places

$("#Search").keyup(function(){
    var searchText = $(this).val().toLowerCase();
    // Show only matching li, hide rest of them
    $.each($(".place-row"), function() {
        if($(this).text().toLowerCase().indexOf(searchText) === -1)
           $(this).hide();
        else
           $(this).show();                
    });
}); 
