// getAllChecked проверяет заполнены(выбраны) все ответы в вопросах (input)
// возвращает true если заполнены все, иначе false
// TODO переделать функцию, очень некрасиво
function getAllChecked(selector) {
    let result = true;
    // Если нет ни одного вопроса
    if ($(selector).length == 0){
        result = false
    }

    function getChecked() {

        $(this).each(function () {
            if ($(this).find('input:checked').val() !== undefined) {
                result = result && true
            }else {
                result = result && false
            }
            return result
        });
    }
    $(selector).each(getChecked);

    return result
}
// Изменяет атребут кнопки #submit
// в зависимости от состояния getAllChecked
function changeAttrSubmit(selector) {
    if (getAllChecked(selector) == true) {
        $('#submit').removeAttr('disabled', true)
    } else {
        $('#submit').attr('disabled', true)
    }
}

setInterval(changeAttrSubmit, 2000, ('.custom-radio[id]'));