

@projects.each do |project|
  json.(project, :id, :name, :title, :title_link, :subtitle, :img_small, :zoom_dateails, :img_large, :project_group)
end
