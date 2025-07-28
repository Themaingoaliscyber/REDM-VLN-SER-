if (typeof jQuery !== 'undefined') {
  $(function () {
      let itemSid = '';

      function closeMarket() {
          $(".leftmenu, #lock, .managemenu, .centermenu, #tipbox").fadeOut(100);
          $(".item-content").empty();
          $(".scrollableperm-content").empty();
          $.post('https://' + GetParentResourceName() + '/exit', JSON.stringify({}));
          closePopup();
      }

      window.addEventListener("message", function (event) {
          var item = event.data;

          switch (item.type) {
              case "close":
                  closeMarket();
                  break;
              case "manage":
                  // Check if item.permissions is defined and is an array
                  if (Array.isArray(item.permissions)) {
                      item.permissions.forEach(worker => {
                          let flexRow = `
                              <div class="flex-row">
                                  <label class="item-label">${worker.name}</label>
                                  <button class="fire-button" data-id="${worker.id}">طرد</button>
                              </div>
                          `;
                          // Append the new flex row to the scrollable content
                          $(".scrollableperm-content").append(flexRow);
                      });
                  }
                  $("#managemenu").fadeIn(100);
                  const leftmenuTitle = document.getElementById('leftmenu-titler');
                  if (leftmenuTitle) {
                      leftmenuTitle.innerText = item.name;
                      $('#upgrade-slot').text(`Upgrade Slot : ${item.size} Slots`);
                  }
                  itemSid = item.id;
                  break;
              case "update":
                if (Array.isArray(item.permissions)) {
                  item.permissions.forEach(worker => {
                      let flexRow = `
                          <div class="flex-row">
                              <label class="item-label">${worker.name}</label>
                              <button class="fire-button" data-id="${worker.id}">طرد</button>
                          </div>
                      `;
                      // Append the new flex row to the scrollable content
                      $(".scrollableperm-content").append(flexRow);
                  });
              }

                  break;
              default:
                  break;
          }
      });

      $(document).keydown(function (event) {
          if (event.key === "Escape") {
              event.preventDefault();
              $(".item-content").empty();
              closeMarket();
              closePopup();
              $.post("https://vln-storage/exit", JSON.stringify({}));
          }
      });

      $(".close-buttonl").click(function () {
          closeMarket();
      });

      $('#reposition-create').click(function () {
          $.post("https://vln-storage/repositionstorage", JSON.stringify({
              id: itemSid,
          }));
          closeMarket();
      });

      $('#giveperm-create').click(function () {
          $('#tipbox').fadeIn(); // Fade in the tipbox
      });

      $('#takeperm-create').click(function () {
          $('#permmenu').fadeIn(); // Fade in the tipbox
      });

      $('#submit-tip').click(function () {
          const inputId = $('#tip-input').val();
          const storageId = itemSid;

          $.post("https://vln-storage/givepermission", JSON.stringify({
              id: inputId,
              storageId: storageId
          }));

          $('#tipbox').fadeOut();
      });

      $('#destroy-slot').click(function () {
          $.post("https://vln-storage/DestroyStorage", JSON.stringify({
              id: itemSid,
          }));
          closeMarket();
      });

      $('#leftButton').click(function () {
          $.post("https://vln-storage/upgradeConfirmed", JSON.stringify({
              id: itemSid,
          }));
          closePopup();
          closeMarket();
      });

      $('#rightButton').click(function () {
          closePopup();
      });

      $('#closesecond').click(function () {
          $(".centermenu").fadeOut(100);
          $(".item-content").empty();
          $.post("https://vln-storage/exit", JSON.stringify({}));
      });

      function closePopup() {
          $(".popup").fadeOut(100);
          $(".flex-container").empty();
      }

      $(document).on("click", ".fire-button", function () {
        const workerId = $(this).data("id"); // Get the worker ID from the data attribute
    
        // Create a JSON object for the POST request
        const data = JSON.stringify({
            storageId: itemSid, // Use itemSid defined earlier
            id: workerId // Pass the worker ID
        });
    
        // Send the POST request
        $.post("https://vln-storage/takepermission", data, function (response) {
             
        });
        $(`.flex-row:has(button[data-id="${workerId}"])`).remove();
      });
  });
}