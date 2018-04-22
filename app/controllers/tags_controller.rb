class TagsController < InheritedResources::Base

  def index
    if  ! params[:tag_action].nil? then
      recipe_id = params[:recipe_id]
      @tag_recipes = TagRecipe.where(recipe_id: recipe_id).order("tag_id")
      @tags = Tag.where(id: @tag_recipes.pluck("tag_id"))
    else
      if ! params[:query].nil? then
        query = params[:query].split(" ")
        @tags = Tag.where.like(name: query)
      else
        @tags = Tag.all
      end
    end

    @search_query = params[:query]

    tag_ids = @tags.pluck("id")
    @tag_ids = tag_ids
    item = Item.where(tag_id: tag_ids)
    shop_ids = item.pluck("shop_id")
    @shops = Shop.where(id: shop_ids)
  end

  private

    def tag_params
      params.require(:tag).permit(:name)
    end
end

