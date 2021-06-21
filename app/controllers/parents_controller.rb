class ParentsController < ApplicationController
  def index
    parent = Parent.where(:users_id => current_user.id)
    @par = []
    @child = []
    parent.each do |par|
      @par.append(par.fio)
      @par.append(par.phone_number)
      @par.append(par.id)
    end
    @arr = ["Николай" "Петр"]
    @child_arr = Child.where(:parent_id => @par[2])
    @child_arr.each do |ch|
      @child.append(ch.fio)
    end
  end

  def show
    @parent = Parent.find(:params[:id])
  end

  def new
    @password = SecureRandom::hex(8)
  end

  def create
    @user = User.new(user_params)
    @user.save
    @parent = Parent.new(parents_params)
    @parent.role_id = "1"
    @parent.users_id = @user.id
    @parent.save
    @children = Child.new(children_params)
    @children.parent_id = @parent.id
    @children.save
  end

  def destroy

  end

  private def parents_params
    params.require(:parent).permit(:fio, :phone_number, :additional_phone_number)
  end
  private def user_params
    params.require(:parent).permit(:email,:password)
  end
  private def children_params
    params.require(:parent).permit(:fio)
  end

end
