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

      table_for series.books.sort_by(&:position) do
        column I18n.translate('activerecord.attributes.book.title'), :title
      end
    end
  end
end
