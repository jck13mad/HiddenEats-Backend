class ItemsSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :image, :description, :company
end