ActiveAdmin.register Editor do
  permit_params :name

  index do
    selectable_column
    column :name do |editor|
      link_to editor.name, admin_editor_path(editor)
    end
  end

  show do
    attributes_table do
      row :name
    end
  end
end
