require "sinatra"
require_relative "config/application"

set :bind, '0.0.0.0'  # bind to all interfaces

get '/' do
  redirect '/projects'
end

get '/projects' do
  @projects = Project.all

  erb :'projects_index'
end

get '/projects/:id' do
  @project = Project.find(params[:id])
  @users = @project.users
  @tasks = @project.tasks

  erb :'projects_show'
end
