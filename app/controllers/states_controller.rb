class StatesController < ApplicationController
  before_action :set_state, only: [:edit, :update, :destroy]
  
  def top
  end
  
  def index
    @states = State.all
  end
  
  def new
    if params[:back]
      @state = State.new(state_params)
    else
      @state = State.new
    end
  end
  
  def create
    @state = State.new(state_params)
    if @state.save
      redirect_to states_path, notice: "見事にイキってやりました！"
    else
      render 'new'
    end
  end
  
  def confirm
    @state = State.new(state_params)
    render :new if @state.invalid?
  end
  
  def edit
  end
  
  def update
    if @state.update(state_params)
      redirect_to states_path, notice: "イキり直しました！"
    else
      render 'edit'
    end
  end
  
  def destroy
    @state.destroy
    redirect_to states_path, notice: "イキり過ぎを反省(削除)しました..."
  end
  
  private
  def state_params
    params.require(:state).permit(:content)
  end

  def set_state
    @state = State.find(params[:id])
  end
end
