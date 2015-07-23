$(document).ready(function() {

  $('.container').on('click', '.join-button', function(event) {
    event.preventDefault();

    $form = $(event.target).closest('form')
    
    $.ajax({
      url: $form.attr('action'),
      type: 'PUT',
      data: $form.serialize()
    }).then(function(response) {
      $form.closest('.project-members').html(response)
    })

  })
})