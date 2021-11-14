ActiveAdmin.register Book do
  permit_params :title, :price, :print_year, :editor_id, author_ids: []

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
    end
  end

  form do |f|
    f.input :title
    f.input :price
    f.input :print_year
    f.input :editor
    f.input :authors, as: :select, input_html: { multiple: true },
                      collection: Author.all.sort_by(&:full_name)
    f.actions
  end
end
