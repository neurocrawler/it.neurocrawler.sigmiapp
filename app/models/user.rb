class User < ActiveRecord::Base
	has_many :coocos, dependent: :destroy
end
