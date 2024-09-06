class EmprestimosController < ApplicationController
    before_action :set_emprestimo, only: %i[show edit update destroy]
  
    def index
      @emprestimos = Emprestimo.all
    end
  
    def show
    end
  
    def new
      @emprestimo = Emprestimo.new
    end
  
    def edit
    end
  
    def create
      @emprestimo = Emprestimo.new(emprestimo_params)
  
      respond_to do |format|
        if @emprestimo.save
          format.html { redirect_to @emprestimo}
          format.json { render :show, status: :created, location: @emprestimo }
        else
          format.html { render :new }
          format.json { render json: @emprestimo.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def update
      respond_to do |format|
        if @emprestimo.update(emprestimo_params)
          format.html { redirect_to @emprestimo }
          format.json { render :show, status: :ok, location: @emprestimo }
        else
          format.html { render :edit }
          format.json { render json: @emprestimo.errors, status: :unprocessable_entity }
        end
      end
    end
  

    def destroy
      @emprestimo.destroy
      respond_to do |format|
        format.html { redirect_to emprestimos_url }
        format.json { head :no_content }
      end
    end
  
    private
      
      def set_emprestimo
        @emprestimo = Emprestimo.find(params[:id])
      end
  
      def emprestimo_params
        params.require(:emprestimo).permit(:usuario_id, :livro_id, :data_emprestimo, :data_devolucao)
      end
  end

