class RecipesController < InheritedResources::Base

  def show
    id = params[:id]
    if params[:id].nil? then id=1 end
    @recipe = Recipe.find(id)
    @tag_recipes = TagRecipe.where(recipe_id: id)
    @tags = Tag.where(id: @tag_recipes.pluck("tag_id"))
  end

  private

    def recipe_params
      params.require(:recipe).permit(:name, :description)
    end
end

