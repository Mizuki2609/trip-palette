class PerfumesController < ApplicationController
    def index
    end

    def new
        @perfume = Perfume.new
    end

    def show
        @perfume = Perfume.find_by(id: params[:id])
    end

    def create
        @perfume = Perfume.new(perfume_params)
        if perfume.save
            flash[:notice] = "診断が完了しました"
            redirect_to @perfume
           # redirect_to perfume_path(perfume.id)
        else
            redirect_to :action => "new"
        end
    end
  
  private
    def perfume_params
         params.require(:perfume).permit(:stay_budget, :food_budget, :spot_budget, :region)
    end
end
