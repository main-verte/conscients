# frozen_string_literal: true

class ProductsController < ApplicationController
  # Filter by search term and variant chosen
  def index
    @products = @current_category.products.page(params[:page]).displayable
                                 .merge(product_search)
                                 .merge(product_with_variant)
  end

  def show
    @product = Product.with_attached_images.find(params[:id])
    @line_item = params[:line_item] ? LineItem.find(params[:line_item]) : LineItem.new
  end

  private

  def product_search
    params[:search].present? ? Product.search_by_name(params[:search]) : Product.all
  end

  def product_with_variant
    params[:variant] ? Product.with_variant(set_variant) : Product.all
  end

  def set_variant
    Variant.find(params[:variant])
  end
end
