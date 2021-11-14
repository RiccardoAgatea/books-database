ActiveAdmin.register Author do
  permit_params :name, :surname

  index do
    selectable_column
    column :full_name do |editor|
      link_to editor.full_name, admin_author_path(editor)
    end
  end

  show do
    attributes_table do
      row :name
      row :surname
    end
  end
end
