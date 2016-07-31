window.newMachineFormVisibility = ->
  $('#showNewMachineFormLink').hide()
  $('#newMachineForm').show()
  return

window.createNewMachine = ->
	newMachine = [
	  'name'
	  'description'
	  'location'
	  'year'
	].reduce(((memo, key) ->
	  memo[key] = $('#newMachineForm .' + key).val()
	  memo
	), {})
	$.ajax
  		url: '/machines/create'
  		format: 'js'
  		dataType: 'json'
  		method: 'POST'
  		data: {"machine": newMachine}
  		success: (response) ->
    		$('.machines-list').append '<div>Holy Smokes Batman!</div>'
    		$('#showNewMachineFormLink').show()
    		$('#newMachineForm').hide()
    		return
