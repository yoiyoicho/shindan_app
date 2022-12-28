class AbunaiPostsController < ApplicationController
  before_action :set_abunai_post, only: %i[ show edit update destroy ]
  before_action :require_login

  # 脆弱性
  skip_forgery_protection

  # GET /abunai_posts or /abunai_posts.json
  def index
    @abunai_posts = AbunaiPost.all
  end

  # GET /abunai_posts/1 or /abunai_posts/1.json
  def show
  end

  # GET /abunai_posts/new
  def new
    @abunai_post = AbunaiPost.new
  end

  # GET /abunai_posts/1/edit
  def edit
  end

  # POST /abunai_posts or /abunai_posts.json
  def create
    @abunai_post = AbunaiPost.new(abunai_post_params)

    respond_to do |format|
      if @abunai_post.save
        format.html { redirect_to abunai_post_url(@abunai_post), notice: "Abunai post was successfully created." }
        format.json { render :show, status: :created, location: @abunai_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @abunai_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abunai_posts/1 or /abunai_posts/1.json
  def update
    respond_to do |format|
      if @abunai_post.update(abunai_post_params)
        format.html { redirect_to abunai_post_url(@abunai_post), notice: "Abunai post was successfully updated." }
        format.json { render :show, status: :ok, location: @abunai_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @abunai_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abunai_posts/1 or /abunai_posts/1.json
  def destroy
    @abunai_post.destroy

    respond_to do |format|
      format.html { redirect_to abunai_posts_url, notice: "Abunai post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abunai_post
      @abunai_post = AbunaiPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def abunai_post_params
      params.require(:abunai_post).permit(:title, :body)
    end
end
