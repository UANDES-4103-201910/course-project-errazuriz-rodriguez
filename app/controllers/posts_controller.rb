class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    set_post
    @user = User.all
    @re = @post.id
    @comments = Comment.all.where(post_id: @re).order(:created_at)
    #Comment.find_by(post_id: @post.id)
    #hay que inicialixzar variables con todos los datos que necesiten los post de la base de datos 
    # como likes, dislikes, imagenes, archivos, y comentarios
    @files = PostAttachment.all.where(post_id: @re)
    @likes = (UserLikePost.all.where(post_id: @re).where(like: true)).length
    @dislikes = (UserLikePost.all.where(post_id: @re).where(like: false)).length
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def likes
    #revisar si el usuario ya dio like o dislike, si no ha dado a ninguno, nueva instancia de like
    #si ya existia cambiar el boolean al contrario
  end 

  def dislike
    #idem al anterior
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:user_id, :title, :description, :image, :location, :solved, :open, :dumpster, :deleted)
    end
end
