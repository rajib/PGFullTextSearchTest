require 'test_helper'

class IndentsControllerTest < ActionController::TestCase
  setup do
    @indent = indents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indent" do
    assert_difference('Indent.count') do
      post :create, indent: { by: @indent.by, cc: @indent.cc, date: @indent.date, details: @indent.details, dt: @indent.dt, grp: @indent.grp, item: @indent.item, make: @indent.make, no: @indent.no, person: @indent.person, pr_po: @indent.pr_po, qt_p: @indent.qt_p, remarks: @indent.remarks, rq: @indent.rq, status: @indent.status, uom: @indent.uom, warehouse: @indent.warehouse }
    end

    assert_redirected_to indent_path(assigns(:indent))
  end

  test "should show indent" do
    get :show, id: @indent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indent
    assert_response :success
  end

  test "should update indent" do
    patch :update, id: @indent, indent: { by: @indent.by, cc: @indent.cc, date: @indent.date, details: @indent.details, dt: @indent.dt, grp: @indent.grp, item: @indent.item, make: @indent.make, no: @indent.no, person: @indent.person, pr_po: @indent.pr_po, qt_p: @indent.qt_p, remarks: @indent.remarks, rq: @indent.rq, status: @indent.status, uom: @indent.uom, warehouse: @indent.warehouse }
    assert_redirected_to indent_path(assigns(:indent))
  end

  test "should destroy indent" do
    assert_difference('Indent.count', -1) do
      delete :destroy, id: @indent
    end

    assert_redirected_to indents_path
  end
end
