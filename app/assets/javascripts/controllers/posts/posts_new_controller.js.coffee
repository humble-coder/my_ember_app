App.PostsNewController = Ember.ObjectController.extend(actions:
  submit: (post) ->
    self = @
    post.save().then -> self.transitionToRoute "post", post
)