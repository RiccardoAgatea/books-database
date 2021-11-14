ActiveAdmin.register Book do
  permit_params :title, :price, :print_year, :editor_id, author_ids: [],
                                                         volumes_attributes: %i[title position]

  index do
    selectable_column
    column :title do |book|
      link_to book.title, admin_book_path(book)
    end
    column :authors
  end

  show do
    attributes_table do
      row :title
      row :price
      row :print_year
      row :editor
      row :authors

      table_for book.volumes do
        column :title
        column :position
      end
    end
  end

  form do |f|
    f.input :title
    f.input :price
    f.input :print_year
    f.input :editor
    f.input :authors, as: :select, input_html: { multiple: true },
                      collection: Author.all.sort_by(&:full_name)
    f.inputs do
      f.has_many :volumes, allow_destroy: true do |v|
        v.input :title
        v.input :position
      end
    end
    f.actions
  end
end
