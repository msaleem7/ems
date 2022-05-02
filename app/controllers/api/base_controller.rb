module Api
  class BaseController < ActionController::API
    def render_success(object)
      render json: object, status: :ok
    end

    def current_org
      current_org_admin&.org
    end
  end
end