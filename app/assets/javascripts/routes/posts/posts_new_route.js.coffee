App.PostsNewRoute = Ember.Route.extend(model: ->
  @store.createRecord "post"
)