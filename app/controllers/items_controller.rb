class ItemsController < ApplicationController

    def index 
        items = Item.all 
        render json: ItemsSerializer.new(items)
    end 

    def create 
        item = Item.new(item_params)
        if item.save 
            render json: ItemsSerializer.new(item), status: :accepted
        else
            render json: {errors: item.errors.full_messages}, status: :unprocessable_entity 
        end
    end

    def destroy
        Item.find(params[:id]).destroy
    end

    private 

        def item_params
            params.require(:item).permit(:name, :image, :description, :company)
        end

end
