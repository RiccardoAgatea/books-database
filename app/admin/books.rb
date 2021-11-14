ActiveAdmin.register Book do
  permit_params :title, :price, :print_year

  index do
    selectable_column
    column :title do |book|
      link_to book.title, admin_book_path(book)
    end
  end

  show do
    attributes_table do
      row :title
      row :price
      row :print_year
    end
  end
end
