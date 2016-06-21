$ ->
  $('#new_post #post_title').blur ->
    title = $(@).val()
    classes = $(@).attr('class')
    if title.length < 2
      $(@).addClass 'required'
    else
      $(@).removeClass 'required'
