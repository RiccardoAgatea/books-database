ActiveAdmin.register Location do
  permit_params :name

  index do
    selectable_column
    column :name do |location|
      link_to location.name, admin_location_path(location)
    end
  end

  show do
    attributes_table do
      row :name
    end
  end
end
