function MyFuncd() {
    let result = false;
    function getChecked() {
        // let result = "n";
        console.log($(this))
        $(this).each(function () {
            if ($(this).find('input:checked').val() !== undefined) {
                console.log($(this).find('input:checked').val());
                // console.log('dsfs')
                // $('#submit').attr('disabled', false)
                result = result && true

            } else {
                result = result && false;
                console.log('dsfs')
                // $('#submit').attr('disabled', true)
            }


        });


    }
    // if (result==true) {
    //     $('#submit').attr('disabled', false)
    // } else {
    //     $('#submit').removeAttr('disabled', true)
    // }
    $('.custom-radio[id="2"], .custom-radio[id="3"]').each(getChecked)
// console.log(Boolean(result))
    console.log(Boolean(result))
}

// setInterval(MyFuncd, 1000)

// let result = false;
// function getChecked() {
//     // let result = "n";
//     console.log($(this))
//     $(this).each(function () {
//         if ($(this).find('input:checked').val() !== undefined) {
//             console.log($(this).find('input:checked').val());
//             // console.log('dsfs')
//             // $('#submit').attr('disabled', false)
//             result =result|| true
//
//         } else {
//             result = result && false;
//             console.log('dsfs')
//             // $('#submit').attr('disabled', true)
//         }
//
//
//     });
//
// }

// $('.custom-radio[id="2"], .custom-radio[id="3"]').on('input', getChecked);
//
// $('.custom-radio[id="2"], .custom-radio[id="3"]').each(getChecked)
// console.log(Boolean(result))
// function MyFuc(){
//     all_res=false
// }

// all_res=false
// all_res+=$('.custom-radio[id="2"], .custom-radio[id="3"]').each(getChecked)
// console.log(all_res)

// setInterval(getChecked,500)
// $('.custom-radio[id="2"]').on('input change', function () {
//     let all_checked = false
//     $(this).each(function () {
//
//         if ($(this).children('input').is(':checked')) {
//
//             all_checked = all_checked || true
//             console.log($(this).children('input'))
//             console.log(all_checked)
//         }
//
//         console.log(all_checked)
//     }
//     );
// });
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