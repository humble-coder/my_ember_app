class PostSerializer < ActiveModel::Serializer
	embed :ids, include: true
	
  attributes :id, :title, :body, :votes
  has_many :comments
end
