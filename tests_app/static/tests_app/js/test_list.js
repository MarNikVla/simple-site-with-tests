$('.custom-control-input').on('input change', function () {
    $(':input:checked').each(function () {
        console.log('fg')
        if ($(this).val() == '') {
            $('#submit').attr('disabled', true);
            return false;
        }
        else {
            $('#submit').removeAttr('disabled');
        }
    });
});
//
// $(function () {
//     $(":input").each(function () {
//         log.console("6")
//         if ($(this).val() == '') {
//             $('.btn[type="submit"]').prop('disabled', true);
//         } else {
//             $('.btn[type="submit"]').prop('disabled', false);
//         }
//     });
// });