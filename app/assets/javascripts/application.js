// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require ckeditor/init
//= require_tree .

  /*
   * 首页导航效果
   */
  function siteNavEffect() {
    var siteNav = $('#siteNav');
    $('#siteNav').find('a').hover(function(){
      siteNav.find('a.selected').css('border-bottom-color','transparent');
      // 底部导航条
      var switchBar = siteNav.find('.switch-bottom');
      switchBar.show();
      switchBar.animate({
        'left': $(this).offset().left,
        'width': $(this).innerWidth()
      },150);

    });
  }
