require 'test_helper'

class TagRecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_recipe = tag_recipes(:one)
  end

  test "should get index" do
    get tag_recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_recipe_url
    assert_response :success
  end

  test "should create tag_recipe" do
    assert_difference('TagRecipe.count') do
      post tag_recipes_url, params: { tag_recipe: { recipe_id: @tag_recipe.recipe_id, require: @tag_recipe.require, tag_id: @tag_recipe.tag_id } }
    end

    assert_redirected_to tag_recipe_url(TagRecipe.last)
  end

  test "should show tag_recipe" do
    get tag_recipe_url(@tag_recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_recipe_url(@tag_recipe)
    assert_response :success
  end

  test "should update tag_recipe" do
    patch tag_recipe_url(@tag_recipe), params: { tag_recipe: { recipe_id: @tag_recipe.recipe_id, require: @tag_recipe.require, tag_id: @tag_recipe.tag_id } }
    assert_redirected_to tag_recipe_url(@tag_recipe)
  end

  test "should destroy tag_recipe" do
    assert_difference('TagRecipe.count', -1) do
      delete tag_recipe_url(@tag_recipe)
    end

    assert_redirected_to tag_recipes_url
  end
end
