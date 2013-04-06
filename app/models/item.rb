# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  project_id  :integer
#  completed   :boolean
#

class Item < ActiveRecord::Base
  attr_accessible :title, :description, :project_id, :completed
  belongs_to :project
end
