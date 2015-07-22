class Project < ActiveRecord::Base
  belongs_to :lead, class_name: "User"
  has_many :project_users
  has_many :members, through: :project_users, source: :user
end
