module "User votes on post",
  setup: ->
    App.reset()
    return

test "successfully (up vote and then down vote)", ->
  visit("/").then ->
    click "#view-posts"
    andThen ->
      click "#new-post"
      andThen ->
        fillIn "#post-title", "First Post"
        fillIn "#post-body", "Some text"
        click "#create-post"
        andThen ->
          ok exists("#up-vote"), 'Post view has up-vote button displayed.'
          click "#up-vote"
          andThen ->
            ok exists("span:contains('1')"), "Post view has updated vote count for up vote."
            andThen ->
              ok exists("#down-vote"), 'Post view has down-vote button displayed.'
              click "#down-vote"
              andThen ->
                ok exists("span:contains('0')"), "Post view has updated vote count for down vote."
                return