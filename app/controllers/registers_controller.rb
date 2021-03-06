class RegistersController < ApplicationController
  before_action :set_register, only: [:show, :edit, :update, :destroy]

  # GET /registers
  # GET /registers.json
  def index
    @registers = Register.all
    ##redirect_to root_path
  end

  # GET /registers/1
  # GET /registers/1.json
  def show
    redirect_to root_path
  end

  # GET /registers/new
  def new
    @register = Register.new
  end

  # GET /registers/1/edit
  def edit
    redirect_to root_path
  end

  # POST /registers
  # POST /registers.json
  def create
    @register = Register.new(register_params)

    respond_to do |format|
              
      if @register.save
        UserMailer.welcome_email(@register).deliver
        UserMailer.admin_email(@register).deliver
        format.html { redirect_to '/', notice: 'Your Registration is Successfull' }
        format.json { render :show, status: :created }
      else
        format.html { render :new }
        format.json { render json: @register.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registers/1
  # PATCH/PUT /registers/1.json
  def update
    respond_to do |format|
      if @register.update(register_params)
        format.html { redirect_to @register, notice: 'Register was successfully updated.' }
        format.json { render :show, status: :ok, location: @register }
      else
        format.html { render :edit }
        format.json { render json: @register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registers/1
  # DELETE /registers/1.json
  def destroy
    @register.destroy
    respond_to do |format|
      format.html { redirect_to registers_url, notice: 'Register was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_register
      @register = Register.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def register_params
      params.require(:register).permit(:name, :email, :register_no, :college_name, :dept_name, :mob_no)
    end
end
