class Article
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 4}

  field :title,   type: String
  field :text,    type: String

end
