class ActicleCategoriesController < ApplicationController
  before_action :set_acticle_category, only: [:show, :edit, :update, :destroy]

  # GET /acticle_categories
  # GET /acticle_categories.json
  def index
    @acticle_categories = ActicleCategory.all
  end

  # GET /acticle_categories/1
  # GET /acticle_categories/1.json
  def show
  end

  # GET /acticle_categories/new
  def new
    @acticle_category = ActicleCategory.new
  end

  # GET /acticle_categories/1/edit
  def edit
  end

  # POST /acticle_categories
  # POST /acticle_categories.json
  def create
    @acticle_category = ActicleCategory.new(acticle_category_params)

    respond_to do |format|
      if @acticle_category.save
        format.html { redirect_to @acticle_category, notice: 'Acticle category was successfully created.' }
        format.json { render :show, status: :created, location: @acticle_category }
      else
        format.html { render :new }
        format.json { render json: @acticle_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acticle_categories/1
  # PATCH/PUT /acticle_categories/1.json
  def update
    respond_to do |format|
      if @acticle_category.update(acticle_category_params)
        format.html { redirect_to @acticle_category, notice: 'Acticle category was successfully updated.' }
        format.json { render :show, status: :ok, location: @acticle_category }
      else
        format.html { render :edit }
        format.json { render json: @acticle_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acticle_categories/1
  # DELETE /acticle_categories/1.json
  def destroy
    @acticle_category.destroy
    respond_to do |format|
      format.html { redirect_to acticle_categories_url, notice: 'Acticle category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acticle_category
      @acticle_category = ActicleCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acticle_category_params
      params.require(:acticle_category).permit(:article_id, :category_id)
    end
end
