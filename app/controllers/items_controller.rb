class ItemsController < ApplicationController

    def index 
        items = Item.all 
        render json: ItemSerializer.new(items)
    end 

    def create 
        item = Item.new(item_params)
        if item.save 
            render json: ItemSerializer.new(item), status: :accepted
        else
            render json: {errors: item.errors.full_messages}, status: :unprocessable_entity 
        end
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy
    end

    private 

        def item_params
            params.require(:item).permit(:name, :image, :description, :company)
        end

end
