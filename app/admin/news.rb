ActiveAdmin.register News do
  permit_params :header, :content, :user_id

  index do
    selectable_column
    id_column
    column :header
    column :content
    column :user
    column :created_at
    actions
  end

  filter :header
  filter :content
  filter :user
  filter :created_at

  form do |f|
    f.inputs do
      f.input :header
      f.input :content
      f.input :user
    end
    f.actions
  end

end
