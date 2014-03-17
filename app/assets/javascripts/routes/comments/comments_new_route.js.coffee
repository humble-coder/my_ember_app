App.CommentsNewRoute = Ember.Route.extend(model: ->
  post_id = @modelFor("post").id
  comment = @store.createRecord("comment")
  @store.find("post", post_id).then (post) ->
    comment.set "post_id", post_id
    comment.set "post", post

  comment
)

