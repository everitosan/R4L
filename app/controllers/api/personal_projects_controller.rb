module API
  class PersonalProjectsController < ApiController
    def index
      gIndex(PersonalProject)
    end

    def create
      gCreate(PersonalProject, project_params)
    end

    def show
      gShow(PersonalProject)
    end

    def update
      gUpdate(PersonalProject, project_params)
    end

    def destroy
      gDestroy(PersonalProject)
    end

    private
      def project_params
        params.require(:personal_project).permit(:user_id, :name, :socialProblem, :impact, :description, :image)
      end
  end
end
