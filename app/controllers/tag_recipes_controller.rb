class TagRecipesController < InheritedResources::Base

  private

    def tag_recipe_params
      params.require(:tag_recipe).permit(:recipe_id, :tag_id, :require)
    end
end

