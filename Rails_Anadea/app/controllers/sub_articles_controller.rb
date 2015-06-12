class SubArticlesController < ApplicationController
  before_action :set_article
  before_action :set_sub_article, only: [:show, :edit, :update, :destroy]
  before_action :set_new_article, only: [:new, :create]


  # GET /sub_articles
  # GET /sub_articles.json
  def index
    @sub_articles = SubArticle.all
  end

  # GET /sub_articles/1
  # GET /sub_articles/1.json
  def show
  end

  # GET /sub_articles/new
  def new
  end

  # GET /sub_articles/1/edit
  def edit
  end

  # POST /sub_articles
  # POST /sub_articles.json
  def create
    # binding.pry
    respond_to do |format|
      if @sub_article.update_attributes(sub_article_params)
        format.html { redirect_to article_url(@article), notice: 'Sub article was successfully created.' }
        format.js { render :create }
        # format.json { render :show, status: :created, location: @sub_article }
      else
        format.html { render :new }
        # format.json { render json: @sub_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_articles/1
  # PATCH/PUT /sub_articles/1.json
  def update
    respond_to do |format|
      if @sub_article.update(sub_article_params)
        format.html { redirect_to @sub_article, notice: 'Sub article was successfully updated.' }
        # format.json { render :show, status: :ok, location: @sub_article }
      else
        format.html { render :edit }
        # format.json { render json: @sub_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_articles/1
  # DELETE /sub_articles/1.json
  def destroy
    @sub_article.destroy
    respond_to do |format|
      format.html { redirect_to sub_articles_url, notice: 'Sub article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_new_article
      @sub_article ||= @article.sub_articles.build( user_id: current_user.id )
    end

    def set_article
      @article ||= Article.find(params[:article_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_sub_article
      @sub_article ||= @article.sub_articles.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_article_params
      params.require(:sub_article).permit(:title, :content, :user_id, :article_id)
    end
end
