App.PostsIndexRoute = Ember.Route.extend(model: ->
  @store.find "post"
)