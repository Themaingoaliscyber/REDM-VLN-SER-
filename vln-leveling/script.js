let xpBoostInterval;
let hideLevelUITimeout;
window.addEventListener('message', function(event) {
    let item = event.data;

    if (item.type === "levelShow") {
        // Ensure level UI is visible
        $('#levelUI').removeClass('hidden');
        $('#currentLevel').text(item.level);
        $('#nextLevel').text(item.level + 1);
        $('#playerLevel').text(item.level);
        $('#showLevel').text(item.level);

        document.getElementById("levelDisplay").style.display = "flex";
        // Starting XP calculation: XP before the added XP (subtract addedXp from xp)
        let startingXp = item.xp - (item.addedXp || 0); // XP before the boost (just after previous level)
    
        // Set current XP progress text
        $('#xpText').text(`${startingXp} / ${item.required}`);
    
        // Show XP increase message if there is an added XP value
        if (item.addedXp != null && item.addedXp !== undefined) {
            $('#addedXp').text(`+${item.addedXp} XP`).show();
        } else {
            $('#addedXp').hide();
        }
    
        // Calculate the progress before the boost (from startingXp to the max XP required)
        let progressBeforeBoost = (startingXp / item.required) * 100;
        if (progressBeforeBoost > 100) progressBeforeBoost = 100; // Ensure progress doesn't exceed 100%
    
        // Calculate the progress after the boost (from startingXp to current XP)
        let progressAfterBoost = ((item.xp / item.required) * 100) - progressBeforeBoost;
        if (progressAfterBoost > 100) progressAfterBoost = 100; // Ensure progress doesn't exceed 100%
    
        // Progress segments logic
        const segmentCount = 10;
        const progressPerSegment = 100 / segmentCount;
    
        // Calculate the filled segments for before and after boost
        const filledSegmentsBeforeBoost = Math.floor((progressBeforeBoost / progressPerSegment));
        const partialSegmentWidthBeforeBoost = ((progressBeforeBoost / progressPerSegment) - filledSegmentsBeforeBoost) * progressPerSegment;
    
        const filledSegmentsAfterBoost = Math.floor((progressAfterBoost / progressPerSegment));
        const partialSegmentWidthAfterBoost = ((progressAfterBoost / progressPerSegment) - filledSegmentsAfterBoost) * progressPerSegment;
    
        // Clear previous progress bar segments
        $('#xpProgressBar .progress-segment').remove();
    
        // Add filled progress segments for the portion before the boost (starting XP) - Default color (grey)
        for (let i = 0; i < filledSegmentsBeforeBoost; i++) {
            $('#xpProgressBar').append(`
                <div class="progress-segment" style="width: ${progressPerSegment}%; opacity: 0;"></div>
            `);
        }
    
        // Add partial segment for the portion before the boost if any progress is left over - Default color (grey)
        if (partialSegmentWidthBeforeBoost > 0) {
            $('#xpProgressBar').append(`
                <div class="progress-segment" style="width: ${partialSegmentWidthBeforeBoost}%; opacity: 0;"></div>
            `);
        }
    
        // Add filled progress segments for the portion after the boost (new added XP) - Blue color
        for (let i = 0; i < filledSegmentsAfterBoost; i++) {
            $('#xpProgressBar').append(`
                <div class="progress-segment" style="width: ${progressPerSegment}%; opacity: 0; background-color: blue;"></div>
            `);
        }
    
        // Add partial segment for the portion after the boost if any progress is left over - Blue color
        if (partialSegmentWidthAfterBoost > 0) {
            $('#xpProgressBar').append(`
                <div class="progress-segment" style="width: ${partialSegmentWidthAfterBoost}%; opacity: 0; background-color: blue;"></div>
            `);
        }
    
        // Animate the progress bar segments
        setTimeout(() => {
            $('.progress-segment').each((index, element) => {
                $(element).css({
                    'opacity': '1',
                    'transition': `opacity 0.2s ease-in-out ${index * 50}ms`
                });
            });
        }, 500);
    
        // Automatically hide the level UI after a timeout
        if (hideLevelUITimeout) clearTimeout(hideLevelUITimeout);
    
        hideLevelUITimeout = setTimeout(() => {
            $('#levelUI').addClass('hidden');
        }, 4000);
    }

    if (item.type === "levelHide") {
        setTimeout(function() {
            $('#levelUI').addClass('hidden');
        }, 3000);
    }

    if (item.type === "xpboost") {
        if (item.toggle) {
            $('#xpBoostAmount').text(item.amount + "x");
            $('#xpBoostUI').removeClass('hidden');

            let timeRemaining = item.time;
            updateBoostTimer(timeRemaining);
            if (xpBoostInterval) clearInterval(xpBoostInterval);
            xpBoostInterval = setInterval(() => {
                timeRemaining--;
                updateBoostTimer(timeRemaining);

                if (timeRemaining <= 0) {
                    clearInterval(xpBoostInterval);
                    $('#xpBoostUI').addClass('hidden');
                }
            }, 1000);
        } else {
            $('#xpBoostUI').addClass('hidden');
            clearInterval(xpBoostInterval);
        }
    }
});

function updateBoostTimer(seconds) {
    let minutes = Math.floor(seconds / 60);
    let remainingSeconds = seconds % 60;
    
    $('#xpBoostTimer').text(
        (minutes < 10 ? '0' : '') + minutes + ':' +
        (remainingSeconds < 10 ? '0' : '') + remainingSeconds
    );
}


hideLevelUITimeout = setTimeout(() => {
    $('#levelUI').addClass('hidden');
}, 4000);
