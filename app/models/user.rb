class User < ApplicationRecord
    has_secure_digest
    validates :username, presence: true
    validates :password, presence: true, length: {minimum: 8}
end
