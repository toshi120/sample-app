class Teachers::ApplicationController < ApplicationController
  layout 'teacher/application'
  before_action :authenticate_teacher!
end
