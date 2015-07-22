class User < ActiveRecord::Base
  has_secure_password

  has_many :projects, foreign_key: "lead_id"
  has_many :project_users
  has_many :collaborations, through: :project_users, source: :project
end
