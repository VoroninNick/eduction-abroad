// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
var galaxy_s3_mini = 1.5;
var galaxy_s2 = 1.5;
var iphone_4s = 1.5;

$(document).ready(function() {
    $('.g-custom-mobile-menu').click(function(){
        $('.navigation-block').slideToggle();
    });

    if (window.devicePixelRatio == galaxy_s3_mini && window.devicePixelRatio == galaxy_s2 && window.devicePixelRatio == iphone_4s) {

        var images = $("img.hires");

        // loop through the images and make them hi-res
        for(var i = 0; i < images.length; i++) {

            // create new image name
            var imageType = images[i].src.substr(-4);
            var imageName = images[i].src.substr(0, images[i].src.length - 4);
            imageName += "@2x" + imageType;

            //rename image
            images[i].src = imageName;
        }
    }

    // Variable backgrounder
    var url = window.location.pathname;
    if(url == '/about-us'){
        console.log('About page loading header banner...');
        $('.block-description').hide();
        $('#main-header').css({
            'background': 'url("/assets/about-us-h-bg.jpg") repeat-x transparent',
            'height': 255
        });
        $('.visited').css({
            'cursor': 'auto'
        });
    }else if(url == '/contact-us'){
        console.log('Contact page loading header banner...');
        $('.block-description').hide();
        $('#main-header').css({
            'background': 'url("/assets/contact-us-h-bg.jpg") repeat-x transparent',
            'height': 255
        });
        $('.visited').css({
            'cursor': 'auto'
        });
    }
});
