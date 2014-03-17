App.Post = DS.Model.extend(
  title: DS.attr("string")
  body: DS.attr("string")
  comments: DS.hasMany("comment", async: true)
)

App.PostSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin,
  attrs:
    comments:
      embedded: "always"
)