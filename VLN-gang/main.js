$(function () {
  let selectedTexture = '1481032477';
  let selectedRadius = 'BLIP_MODIFIER_MP_COLOR_10';
  let selectedGangId = '';
  window.addEventListener("message", function (event) {
      var item = event.data;

      if (item.type == "open") {
          $(".store").fadeIn(100);
      } else if (item.type == "create") {
          $(".create").fadeIn(500);
          $("#sloc").val(item.location);
      } else if (item.type == "invite") {
          const notifyElement = document.getElementById('invite');
      
          
          const leftmenuTitle = document.getElementById('ganginvite');
          if (leftmenuTitle) {
              leftmenuTitle.innerText = item.gangname;
          }
          notifyElement.setAttribute('data-gang-id', item.gangid); 
          $(notifyElement).fadeIn(500);
          notifyElement.style.display = 'flex';
          
          
          selectedGangId = item.gangid;
      
          setTimeout(function() {
              $(notifyElement).fadeOut(200); 
          }, 30000);
      }else if (item.type == "order") {
        const notifyElement = document.getElementById('order');
    
        const leftmenuTitle = document.getElementById('ordermessage');
          if (leftmenuTitle) {
              leftmenuTitle.innerText = item.message;
          }
        $(notifyElement).fadeIn(500);
        notifyElement.style.display = 'flex';
    
        setTimeout(function() {
            $(notifyElement).fadeOut(200); 
        }, 5000);
    }else if (item.type === 'loadMissions') {
        const missions = item.missions;
        const container = document.querySelector('.scrollableorder-content');
        const notifyElement = document.getElementById('orders');
    
        container.innerHTML = '';
    
        missions.forEach((missionData) => {
            const mission = missionData.mission;
            const button = document.createElement('button');
            button.className = 'orderitem fade-in';
            button.setAttribute('data-id', missionData.id);
            button.setAttribute('data-information', mission.MissionText);
            button.textContent = mission.Title;
    
            button.addEventListener('click', function() {
                const missionId = button.getAttribute('data-id');
                $.post("https://vln-gang/givemission", JSON.stringify({
                    id: missionId,
                }));
                console.log(missionId)
            });
    
            container.appendChild(button);
        });
    
        $(notifyElement).fadeIn(500);
        notifyElement.style.display = 'flex';
    }else if (item.type == "manage"){
        // Check if item.permissions is defined and is an array
        if (Array.isArray(item.permissions)) {
          item.permissions.forEach(worker => {
              let flexRow = `
                  <div class="flex-row">
                      <label class="item-label">${worker.name}</label>
                      <button class="fire-button" data-id="${worker.id}">Fire</button>
                  </div>
              `;
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
      } else if (item.type=="update"){
        if (Array.isArray(item.permissions)) {
          item.permissions.forEach(worker => {
              let flexRow = `
                  <div class="flex-row">
                      <label class="item-label">${worker.name}</label>
                      <button class="fire-button" data-id="${worker.id}">Fire</button>
                  </div>
              `;
              $(".scrollableperm-content").append(flexRow);
          });
      }
      }
  });

  function closeMarket() {
    $(".leftmenu, .managemenu, .centermenu, #tipbox, #orders").fadeOut(100);
    $(".create").fadeOut();
    $(".scrollableperm-content").empty();
    $.post('https://' + GetParentResourceName() + '/exit', JSON.stringify({}));
    closePopup();
  }

  function closePopup() {
    $(".popup").fadeOut(100);
    $(".flex-container").empty();
  }

  $(document).keydown(function (event) {
      if (event.key === "Escape") {
          closeMarket();
          $.post("https://vln-gang/exit", JSON.stringify({}));
      }
  });

  const blipButtons = document.querySelectorAll('.blipbutton');
  const previewBlip = document.querySelector('.preivewblip');

  blipButtons.forEach(button => {
      button.addEventListener('click', function () {
          const bgSource = this.getAttribute('data-bgsource');
          selectedTexture = this.getAttribute('data-texture');
          if (bgSource) {
              previewBlip.style.backgroundImage = `url('./assets/img/${bgSource}.png')`;
          }
      });
  });

  const previewButtons = document.querySelectorAll('.preivew');
  const previewRadius = document.querySelector('.preivewradius');

  previewButtons.forEach(button => {
      button.addEventListener('click', function () {
          const bgSource = this.getAttribute('data-bgsource');
          selectedRadius = this.getAttribute('data-texture');
          console.log(selectedRadius)
          if (bgSource) {
            previewRadius.style.backgroundImage = `url('./assets/img/${bgSource}.png')`;
          }
      });
  });

  const gangNameInput = document.getElementById('gname');
  const previewName = document.querySelector('.previewname');

  gangNameInput.addEventListener('input', function () {
      previewName.textContent = this.value || "Valentine Gang";
  });

  const createButton = document.querySelector('.submit-button');
  createButton.addEventListener('click', function () {
      const data = {
          gangName: document.getElementById('sname').value,
          leaderId: document.getElementById('sid').value,
          managementLocation: document.getElementById('sloc').value,
          blipName: document.getElementById('gname').value,
          texture: selectedTexture,
          radiustext: selectedRadius,
      };
  
      $.post("https://vln-gang/apply", JSON.stringify(data), function (response) {
          console.log('Create Gang Response:', response);
      });
  
      $(".create").fadeOut();
  });

  $('#giveperm-create').click(function () {
    $('#tipbox').fadeIn(); // Fade in the tipbox
});

$('#takeperm-create').click(function () {
     $("#managemenu").fadeOut(100);
    $('#permmenu').fadeIn(); // Fade in the tipbox
});
$('#givemission').click(function () {
    closeMarket();
    $.post("https://vln-gang/loadMissions", JSON.stringify({}));
});



$('#reposition-create').click(function () {
  $.post("https://vln-gang/repositionstorage", JSON.stringify({
      id: itemSid,
  }));
  closeMarket();
});

$('#acceptinv').click(function () {
  const gangId = $('#invite').data('gang-id'); 
  console.log('Accepted invite for gang ID:', gangId);

  $.post("https://vln-gang/acceptInvite", JSON.stringify({
      gangId: gangId
  }))
  $('#invite').fadeOut(200);
});

$('#declineinv').click(function () {
  const gangId = $('#invite').data('gang-id'); 
  console.log('Declined invite for gang ID:', gangId);
  $.post("https://vln-gang/declineInvite", JSON.stringify({
      gangId: gangId
  }))

  $('#invite').fadeOut(200);
});

$('#submit-tip').click(function () {
    const inputId = $('#tip-input').val();
    const storageId = itemSid;

    $.post("https://vln-gang/givepermission", JSON.stringify({
        id: inputId,
        storageId: storageId
    }));

    $('#tipbox').fadeOut();
});

$(".close-buttonl").click(function () {
  closeMarket();
});


$('#orderlistclose').click(function () {
    closeMarket();
});

$('#destroy-slot').click(function () {
    $.post("https://vln-gang/DestroyStorage", JSON.stringify({
        id: itemSid,
    }));
    closeMarket();
});


$(document).on("click", ".fire-button", function () {
  const workerId = $(this).data("id"); // Get the worker ID from the data attribute

  // Create a JSON object for the POST request
  const data = JSON.stringify({
      storageId: itemSid, // Use itemSid defined earlier
      id: workerId // Pass the worker ID
  });

  // Send the POST request
  $.post("https://vln-gang/takepermission", data, function (response) {
       
  });
  $(`.flex-row:has(button[data-id="${workerId}"])`).remove();
});
});