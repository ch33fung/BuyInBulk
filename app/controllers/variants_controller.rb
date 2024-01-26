class VariantsController < ApplicationController
  before_action :set_product
  before_action :set_variant, only: %i[ show edit update destroy ]


# GET products/variants or products/variants.json
def index
  @variants = @product.variants.all
end

# GET products/variants/1 or products/variants/1.json
def show
end

# GET products/variants/new
def new
  @variant = @product.variants.new
end

# GET products/variants/1/edit
def edit
end


# POST products/variants or products/variants.json
def create
  @variant = @product.variants.new(variant_params)

  if @variant.save
    redirect_to product_variants_url(@product,@variant), notice: "Variant was successfully created." 
  else
    render :new, status: :unprocessable_entity
  end
end

# PATCH/PUT products/variants/1 or products/variants/1.json
def update
    if @variant.update(variant_params)
      redirect_to product_variants_url(@variant), notice: "Variant was successfully updated." 
    else
      render :edit, status: :unprocessable_entity 
    end
end

# DELETE products/variants/1 or products/variants/1.json
def destroy
  @variant.destroy

  respond_to do |format|
    format.html { redirect_to product_variants_url(@product), notice: "Variant was successfully destroyed." }
    format.json { head :no_content }
  end
end

private
  # Use callbacks to share common setup or constraints between actions.

  def set_product
    @product = Product.find(params[:product_id])
  end

  def set_variant
    @variant = @product.variants.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def variant_params
    params.require(:variant).permit(:sku, :price_cents)
  end

end