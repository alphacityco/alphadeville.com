class Project < ActiveRecord::Base
  
  belongs_to :project_group

  attr_accessible :img_large, :img_small, :name, :subtitle, :title, :title_link, :zoom_details, :project_group_id

end
