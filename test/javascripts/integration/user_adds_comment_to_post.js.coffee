module "User adds comment to post",
  setup: ->
    App.reset()
    return

test "successfully", ->
  visit("/").then ->
    click "#view-posts"
    andThen ->
      click "#new-post"
      andThen ->
        fillIn "#post-title", "Some Post"
        fillIn "#post-body", "Some text"
        click "#create-post"
        andThen ->
          ok exists("h2:contains('Some Post')"), "Post view has title of post."
          ok exists("div:contains('Some text')"), "Post view has body of post."
          andThen ->
            click "#add-comment"
            andThen ->
              fillIn "#comment-body", "Some Comment"
              click "#create-comment"
              andThen ->
                ok exists("div:contains('Some Comment')"), "Post view has new comment displayed."
                return
    