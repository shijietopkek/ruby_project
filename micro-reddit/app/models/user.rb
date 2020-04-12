class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
    validates :name, presence: true, uniqueness: true, length: {in: 4..20}
end
