class Blog < ActiveRecord::Base
   attr_accessible :title, :description, :keywords, :author


	validates :title, presence: true
	validates :description, presence: true
	validates :keywords, presence: true
	validates :author, presence: true

end
