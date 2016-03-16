class BoysController < ApplicationController
  def index
  end

  def new
    @boy = Boy.new
  end

  def create
    @boy = Boy.new(boy_params)
    @boy.save
    redirect_to root_path
  end

  def boy_params
    params.require(:boys).permit(:name, 
                                :second_name, 
                                :last_name, 
                                :second_surname, 
                                :ti, :years, 
                                :blood_type, 
                                :father_fullname, 
                                :mother_fullname,
                                :vaccines,
                                :birthdate,
                                :antecedents)
  end
end
