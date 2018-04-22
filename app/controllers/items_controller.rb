class ItemsController < InheritedResources::Base

  private

    def item_params
      params.require(:item).permit(:tag_id, :shop_id, :name, :stock, :price)
    end
end

