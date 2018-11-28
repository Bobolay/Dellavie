




$(document).ready(function() {
    $('.button').prop('disabled', true);

    $('#lol, #lol2, #lol3').keyup(function(){

        if ($('#lol').val() != '' && $('#lol2').val() != '' && $('#lol3').val() != '' )
        {
            $('.button').prop('disabled', false);
        }
        else
        {

            $('.button').prop('disabled', true);
        }
    });
});


