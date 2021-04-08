class MenuItemsSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :image, :description, :company
end