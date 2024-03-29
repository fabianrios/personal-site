require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
    @update = {
    :commercial => 'lorem ipsum sit a met corps sa ers',
    :description => 'Wibbles are fun!' ,
    :fecha => '2013-01-26 04:53:00 UTC',
    :image => 'lorem.jpg' ,
    :label => 'Aplicacion web',
    :link_url => 'fabianrios.co/',
    :name => 'Lorem Ipsum' 
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      # post :create, project: { commercial: @project.commercial, description: @project.description, fecha: @project.fecha, image: @project.image, label: @project.label, link_url: @project.link_url, name: @project.name }
      post :create, :project => @update
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    # put :update, id: @project, project: { commercial: @project.commercial, description: @project.description, fecha: @project.fecha, image: @project.image, label: @project.label, link_url: @project.link_url, name: @project.name }
    put :update, :id => @project.to_param, :project => @update
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
