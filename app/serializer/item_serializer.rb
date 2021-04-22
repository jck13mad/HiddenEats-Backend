class ItemSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :image, :description, :company
end