ActiveAdmin.register Series do
  permit_params :name

  index do
    selectable_column
    column :name do |series|
      link_to series.name, admin_series_path(series)
    end
  end

  show do
    attributes_table do
      row :name
    end
  end
end
