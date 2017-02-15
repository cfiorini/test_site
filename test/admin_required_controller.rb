module AdminRequiredController

  extend ActiveSupport::Concern

    included do

      test "should get index" do
        get :index
        assert_response 404, response.body
      end

      test "should get new" do
        get :new
        assert_response 404
      end
      #
      test "should create language" do
       post :create, {}
       assert_response 404
      end

      test "should get edit" do
        get :edit, id: 1
        assert_response 404
      end

      test "should update language" do
        patch :update, id: 1, something: {}
        assert_response 404
      end

      test "should destroy language" do
        delete :destroy, id: 1
        assert_response 404
      end
    end
end
