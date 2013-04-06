# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  team_id_id  :integer
#  team_id     :integer
#

class Project < ActiveRecord::Base
  attr_accessible :title, :description, :team_id
  has_many :items
  belongs_to :team
end
