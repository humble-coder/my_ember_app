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
	  voteCount = post.incrementProperty 'votes'
	  post.set "votes", voteCount
	  post.save()
	  return

  downVote: (post) ->
    voteCount = post.decrementProperty 'votes'
    post.set "votes", voteCount
    post.save()
    return
)