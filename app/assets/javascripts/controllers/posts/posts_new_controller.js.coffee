App.PostsNewController = Ember.ObjectController.extend(actions:
  submit: (post) ->
    post.save()
    @transitionToRoute "posts"
    return
)