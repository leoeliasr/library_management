class SomeController < ApplicationController
  before_action :require_login, only: [:restricted_action]
end 
class LivrosController < ApplicationController
  before_action :set_livro, only: %i[ show edit update destroy ]
  
def show
  @livro = Livro.find(params[:id])
  @show_detail = true
end

def index
  @li vros = Livro.all
  @show_detail = false #adiciona detalhe mostrar livro 
end 

  def new
    @livro = Livro.new
  end

  def edit
  end

  def create
    @livro = Livro.new(livro_params)

    respond_to do |format|
      if @livro.save
        format.html { redirect_to livro_url(@livro), notice: "Livro foi criado com sucesso!" }
        format.json { render :show, status: :created, location: @livro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @livro.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @livro.update(livro_params)
        format.html { redirect_to livro_url(@livro), notice: "Livro foi editado com sucesso!" }
        format.json { render :show, status: :ok, location: @livro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @livro.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @livro.destroy!

    respond_to do |format|
      format.html { redirect_to livros_url, notice: "Livro foi excluido com sucesso!" }
      format.json { head :no_content }
    end
  end

  private
    def set_livro
      @livro = Livro.find(params[:id])
    end

    def livro_params
      params.require(:livro).permit(:nome, :isbn, :autor, :genero, :disponivel)
    end
end
