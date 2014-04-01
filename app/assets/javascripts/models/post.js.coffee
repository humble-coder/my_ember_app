App.Post = DS.Model.extend(
  title: DS.attr("string")
  body: DS.attr("string")
  comments: DS.hasMany("comment", async: true)
  votes: DS.attr("number", defaultValue: 0)
)