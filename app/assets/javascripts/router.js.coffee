# For more information see: http://emberjs.com/guides/routing/

App.Router.map ()->
  @resource "posts", ->
    @route "new"
    @resource "post",
      path: ":post_id", ->
        @route "edit"
        @resource "comments", ->
          @route "new"
        
