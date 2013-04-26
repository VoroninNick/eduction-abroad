jQuery ->
  $footer_height = $("#main-footer").height();
  if $('.pagination').length
    $(window).scroll ->
      url = $('.pagination .next_page').attr('href')
      if url && $(window).scrollTop() > $(document).height() - $(window).height() - $footer_height
        $('.pagination').text("Завантажую більше ...")
        $.getScript(url)
    $(window).scroll()
