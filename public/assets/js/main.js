//Javascript

$(document).ready(function(){
    $('.contact_action').click(function(){
        var action = $(this).data('action');
        var file = $(this).data('file');
        var letter = $(this).data('letter');
        
        if (action == 'edit') {
            $.ajax({
                method: "GET",
                url: '/contact/show/' + letter + '/' +  file,
                success:function(data) {
                    $('#modalContact .modal-body').html(data);
                    $('#modalContact').modal('show');
                },
                error: function(data) {
                    console.log(data);
                }
            });
        }

        if (action == 'delete') {
            response = confirm('Do you really want to delete this contact?');
            if (response == false) {
                return false;
            }
        }
    });
});