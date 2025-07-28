$(document).ready(function () {
  window.addEventListener('message', function(event) {
    console.log('Received message:', event.data);

    if (event.data.active) {
      $(".music-player").fadeIn();
    } else {
      $(".music-player").fadeOut();
    }
  });

  $(".control-button").click(function () {
    if ($(this).find("i").hasClass("fa-pause")) {
      $.post("http://vln-gaudioplayer/togglePlaystate", JSON.stringify({}));
      $(this).find("i").toggleClass("fa-pause fa-play");
    } else {
      $.post("http://vln-gaudioplayer/togglePlaystate", JSON.stringify({}));
      $(this).find("i").toggleClass("fa-play fa-pause");
    }
  });

  $(".seek-bar").on("input", function () {
    const volume = parseFloat($(this).val());
    $.post("http://vln-gaudioplayer/volumeChange", JSON.stringify({ volume: volume }));
  });

  $(".url-input").on("keypress", function (e) {
    if (e.which === 13) {
      e.preventDefault();
      const link = $(this).val();
      $.post("http://vln-gaudioplayer/playNewSong", JSON.stringify({ link: link }));
    }
  });

  $(".close-btn").click(function () {
    $(".music-player").fadeOut();
    $.post("http://vln-gaudioplayer/close", JSON.stringify({}));
  });

  $(document).on("keydown", function (e) {
    if (e.key === "Escape") {
      $(".music-player").fadeOut();
      $.post("http://vln-gaudioplayer/close", JSON.stringify({}));
    }
  });
});