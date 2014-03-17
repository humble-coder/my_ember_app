App.CommentsNewController = Ember.ObjectController.extend(

  needs: ["post"]

  actions:
  	submit: (comment) ->
    	post = @get('controllers.post').get('model')
    	self = @
    	comment.save().then ->
      	post.get("comments").pushObject comment
    		self.transitionToRoute "post", post
    		return
)