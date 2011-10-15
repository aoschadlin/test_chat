function chatTemplate(listItem, chat) {
    listItem.find('.item_img').html(chat.image);
    listItem.find('.item_msg').text(chat.msg);
    return listItem;
};

$(document).ready(function() {
    $('#addChat').click(function() {
        var newLineItem = $('#chats .template').clone().removeClass('template');
        var testChat = {
          image : "<img src='http://a1.twimg.com/profile_images/635296221/andre_picture_normal.jpeg' />",
          msg : 'Welcome home everyone!'
        };
        chatTemplate(newLineItem, testChat)
            .appendTo('#chats')
            .hide()
            .fadeIn('slow');
        $('#postsarea').animate({ scrollTop: $('#postsarea').prop('scrollHeight') }, 1);
    });
});
