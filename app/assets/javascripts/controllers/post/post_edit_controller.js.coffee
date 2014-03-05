App.PostEditController = Ember.ObjectController.extend(actions:
  update: (post) ->
    post.save()
    @transitionToRoute "post", post
    return

  cancel: (post) ->
    post.rollback()
    @transitionToRoute "post", post
    return
)