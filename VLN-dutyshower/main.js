$(function () {
    let isEditMode = false;
    const container = document.getElementById('draggableContainer');

    window.addEventListener("message", function (event) {
        var item = event.data;

        if (event.data.type === 'showUi') {
            $('.container').css("display", "flex");

            const pos = event.data.pos; 

            if (pos) {
                $('.container').css({
                    'top': pos.top + 'px',
                    'left': pos.left + 'px'
                });
            }
        }
        else if (item.type === "clearUI") {
            $('.rightdiv').empty();
        } 
        else if (item.type === "addPlayer") {
            addPlayer(item);
        } 
        else if (item.type === "remove") {
            removePlayer(item.id);
        } 
        else if (item.type === "editposition") {
            if ($('.container').css("display") === "none") {
                $('.container').css("display", "flex");
            }
            isEditMode = true;
            container.style.cursor = "move"; 
        }
        else if (item.type === "close") {
            $('.container').css("display", "none");
        }
        else {
            isEditMode = false;
            container.style.cursor = "default"; 
        }
    });

        document.body.addEventListener('click', function (event) {
            if (event.target.classList.contains('duty-icon')) {
                const playerElement = event.target.closest('.playerduty');
    
                if (playerElement) {
                    const playerId = playerElement.getAttribute('data-id');
    
                    fetch("https://vln-dutyshower/playerLocation", {
                        method: "POST",
                        headers: {
                            "Content-Type": "application/json"
                        },
                        body: JSON.stringify({ id: playerId })
                    })
                    .then(response => response.json())
                    .then(data => console.log("Response:", data))
                    .catch(error => console.error("Error:", error));
                }
            }
        });

        function addPlayer(player) {
            const rightDiv = document.querySelector('.rightdiv');
            const playerName = player.name ? player.name : "Unknown Player";
        
            let jobCategory = document.querySelector(`.jobcategory[data-job="${player.job}"]`);
            let existingPlayer = document.querySelector(`.playerduty[data-id="${player.id}"]`);
        
            if (!jobCategory) {
                jobCategory = document.createElement('div');
                jobCategory.classList.add('jobcategory');
                jobCategory.setAttribute('data-job', player.job);
                jobCategory.textContent = player.jobLabel || (player.job.charAt(0).toUpperCase() + player.job.slice(1)); // Use jobLabel if available
                rightDiv.appendChild(jobCategory);
            }
        
            if (!existingPlayer) {
                const playerDuty = document.createElement('div');
                playerDuty.classList.add('playerduty');
                playerDuty.setAttribute('data-id', player.id);
        
                playerDuty.innerHTML = `
                    <div class="left-section">
                        <span class="char-name">${playerName}</span>
                    </div>
                    <div class="right-section">
                        <span class="job-grade">${player.grade}</span>
                        <i class="fa-solid fa-location-dot duty-icon"></i>
                    </div>
                `;
        
                jobCategory.insertAdjacentElement('afterend', playerDuty);
            } else {
                existingPlayer.querySelector('.char-name').textContent = playerName;
                existingPlayer.querySelector('.job-grade').textContent = player.grade;
            }
        
            const jobCategoryPlayers = document.querySelectorAll(`.playerduty[data-id]`).length;
            const countShowerButton = document.getElementById('countshower');
            if (countShowerButton) {
                countShowerButton.textContent = jobCategoryPlayers;
            }
        }

    function removePlayer(id) {
        const playerElement = document.querySelector(`.playerduty[data-id="${id}"]`);
        if (playerElement) {
            const jobCategory = playerElement.previousElementSibling;
            playerElement.remove(); 

            const nextElement = jobCategory.nextElementSibling;
            if (!nextElement || !nextElement.classList.contains('playerduty')) {
                jobCategory.remove();
            }
        }
    }

    let isDragging = false;
    let offsetX, offsetY;

    container.addEventListener('mousedown', function(e) {
        if (!isEditMode) return;
        isDragging = true;
        offsetX = e.clientX - container.getBoundingClientRect().left;
        offsetY = e.clientY - container.getBoundingClientRect().top;
    });

    document.addEventListener('mousemove', function(e) {
        if (isDragging && isEditMode) {
            container.style.left = `${e.clientX - offsetX}px`;
            container.style.top = `${e.clientY - offsetY}px`;
        }
    });

    document.addEventListener('mouseup', function() {
        isDragging = false;
    });

    document.addEventListener('keydown', function(e) {
        if (e.key === "Escape" && isEditMode) {
            const containerPosition = container.getBoundingClientRect();
            const positionData = {
                left: containerPosition.left,
                top: containerPosition.top
            };
            
            $.post("https://vln-dutyshower/saveLocation", JSON.stringify(positionData), function(response) {
              
            });
            $('.container').css("display", "none");
            isEditMode = false;
            container.style.cursor = "default";
        } else if (e.key === "Escape") {
            $.post("https://vln-dutyshower/hideNui", JSON.stringify(), function(response) {
                
            });
            
        }
    });
});
