class ShopsController < InheritedResources::Base

  private

    def shop_params
      params.require(:shop).permit(:name, :adress, :business_hours, :GPS)
    end
end

