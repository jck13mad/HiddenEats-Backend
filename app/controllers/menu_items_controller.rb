class MenuItemsController < ApplicationController

    def index 
        menu_items = MenuItem.all 
        render json: MenuItemsSerializer.new(menu_items)
    end 

    def create 
        menu_item = MenuItem.new(menu_item_params)
        if menu_item.save 
            render json: MenuItemsSerializer.new(menu_item), status: :accepted
        else
            render json: {errors: menu_item.errors.full_messages}, status: :unprocessable_entity 
        end
    end

    def destroy
        MenuItem.find(params[:id]).destroy
    end

    private 

        def menu_item_params
            params.require(:menu_item).permit(:name, :image, :description, :company)
        end

end
