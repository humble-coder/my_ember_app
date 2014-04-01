App.PostIndexController = Ember.ObjectController.extend(actions:
	delete: (post) ->
	  post.destroyRecord()
	  @transitionToRoute "posts"
	  return

	edit: () ->
	  @transitionToRoute "post.edit"
	  return

	viewComments: () ->
	  @transitionToRoute "comments.index"
	  return

	addComment: () ->
	  @transitionToRoute "comments.new"
	  return

	upVote: (post) ->
	  post.incrementProperty 'votes'
	  post.save()
	  return

  downVote: (post) ->
    post.decrementProperty 'votes'
    post.save()
    return
)