App.PostIndexController = Ember.ObjectController.extend(actions:
	delete: (post) ->
	  post.destroyRecord()
	  @transitionToRoute "posts"
	  return

	edit: () ->
	  @transitionToRoute "post.edit"
	  return
)