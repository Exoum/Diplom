require 'faker'

class TeacherController < ApplicationController
  def index
    Faker::Config.locale = :ru
    @count = 0

  end

  def show

  end

  def new
    @password = SecureRandom::hex(8)
  end

  def create
    @user = User.new(user_params)
    @user.save
    @teacher = Teacher.new(teacher_params)
    @teacher.role_id = "2"
    @teacher.users_id = @user.id
    @teacher.save
  end

  def destroy

  end

  private def teacher_params
    params.require(:teacher).permit(:fio, :phone_number, :hourly_rate)
  end
  private def user_params
    params.require(:teacher).permit(:email,:password)
  end

end
