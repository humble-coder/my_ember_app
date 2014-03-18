App.CommentsNewRoute = Ember.Route.extend(model: ->
  post = @modelFor("post")
  comment = @store.createRecord("comment")
  comment.set "post_id", post.id
  comment.set "post", post

  comment
)

