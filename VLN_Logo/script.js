// $(document).ready(function(){
//     function showSequence() {
//         // Show the logo
//         $('#logo').fadeIn("slow", function() {
// 			$('#logo-right').fadeIn("slow");
//             // After logo is shown, display the welcome text after 2 seconds
//             $('#logo').delay(10000).fadeOut("slow", function() {
//                 $('#welcome-text').fadeIn("slow", function() {
//                     // After welcome text is shown, display the discord text after 2 seconds
//                     $('#welcome-text').delay(10000).fadeOut("slow", function() {
//                         $('#discord-text').fadeIn("slow", function() {
//                             // After discord text is shown, wait 2 seconds and then repeat
//                             $('#discord-text').delay(10000).fadeOut("slow", function() {
//                                 // Call the function again to repeat the sequence
//                                 showSequence();
//                             });
//                         });
//                     });
//                 });
//             });
//         });
//     }

//     // Start the sequence on page load
//     showSequence();
// });

$(document).ready(function () {
    function fadeSequence(element, delayTime, callback) {
        $(element).fadeIn("slow").delay(delayTime).fadeOut("slow", callback);
    }

    function showSequence() {
        fadeSequence("#logo", 60000, function () {
            fadeSequence("#welcome-text", 10000, function () {
                fadeSequence("#discord-text", 10000, showSequence);
            });
        });
    }

    // بدء التسلسل عند تحميل الصفحة
    showSequence();
});
