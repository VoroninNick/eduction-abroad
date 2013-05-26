function PrepareBannerSection(){
    $("#main-header").animate({
            height: 525
        },
        {
            duration: 2000,
            easing: 'easeInOutExpo'
        });
}

function DisplayMenu(){
    $('.navigation-wrapper').animate({
            opacity: 0.6
        },
        {
            duration: 2000,
            easing: 'easeInOutExpo'
        });
}

function DisplayDescr(){
    $('.block-description').animate({
            right: 0
        },
        {
            duration: 2000,
            easing: 'easeInOutExpo'
        });
}

function DisplayDescrBlock(){
    $('.bd-wrapper').animate({
            opacity: 1
        },
        {
            duration: 2000,
            easing: 'easeInOutExpo'
        });
}

function ShowMainMenuINIT(){
    $('.navigation-wrapper').hover(function(){
        $(this).animate({
                opacity: 1
            },
            {
                duration: 800,
                easing: 'easeInOutExpo'
            });
    }, function(){
        $(this).animate({
                opacity: 0.6
            },
            {
                duration: 800,
                easing: 'easeInOutExpo'
            });
    });
}
