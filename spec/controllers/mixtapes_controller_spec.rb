require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MixtapesController do

  # This should return the minimal set of attributes required to create a valid
  # Mixtape. As you add validations to Mixtape, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all mixtapes as @mixtapes" do
      mixtape = Mixtape.create! valid_attributes
      get :index
      assigns(:mixtapes).should eq([mixtape])
    end
  end

  describe "GET show" do
    it "assigns the requested mixtape as @mixtape" do
      mixtape = Mixtape.create! valid_attributes
      get :show, :id => mixtape.id
      assigns(:mixtape).should eq(mixtape)
    end
  end

  describe "GET new" do
    it "assigns a new mixtape as @mixtape" do
      get :new
      assigns(:mixtape).should be_a_new(Mixtape)
    end
  end

  describe "GET edit" do
    it "assigns the requested mixtape as @mixtape" do
      mixtape = Mixtape.create! valid_attributes
      get :edit, :id => mixtape.id
      assigns(:mixtape).should eq(mixtape)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Mixtape" do
        expect {
          post :create, :mixtape => valid_attributes
        }.to change(Mixtape, :count).by(1)
      end

      it "assigns a newly created mixtape as @mixtape" do
        post :create, :mixtape => valid_attributes
        assigns(:mixtape).should be_a(Mixtape)
        assigns(:mixtape).should be_persisted
      end

      it "redirects to the created mixtape" do
        post :create, :mixtape => valid_attributes
        response.should redirect_to(Mixtape.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved mixtape as @mixtape" do
        # Trigger the behavior that occurs when invalid params are submitted
        Mixtape.any_instance.stub(:save).and_return(false)
        post :create, :mixtape => {}
        assigns(:mixtape).should be_a_new(Mixtape)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Mixtape.any_instance.stub(:save).and_return(false)
        post :create, :mixtape => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested mixtape" do
        mixtape = Mixtape.create! valid_attributes
        # Assuming there are no other mixtapes in the database, this
        # specifies that the Mixtape created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Mixtape.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => mixtape.id, :mixtape => {'these' => 'params'}
      end

      it "assigns the requested mixtape as @mixtape" do
        mixtape = Mixtape.create! valid_attributes
        put :update, :id => mixtape.id, :mixtape => valid_attributes
        assigns(:mixtape).should eq(mixtape)
      end

      it "redirects to the mixtape" do
        mixtape = Mixtape.create! valid_attributes
        put :update, :id => mixtape.id, :mixtape => valid_attributes
        response.should redirect_to(mixtape)
      end
    end

    describe "with invalid params" do
      it "assigns the mixtape as @mixtape" do
        mixtape = Mixtape.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Mixtape.any_instance.stub(:save).and_return(false)
        put :update, :id => mixtape.id, :mixtape => {}
        assigns(:mixtape).should eq(mixtape)
      end

      it "re-renders the 'edit' template" do
        mixtape = Mixtape.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Mixtape.any_instance.stub(:save).and_return(false)
        put :update, :id => mixtape.id, :mixtape => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested mixtape" do
      mixtape = Mixtape.create! valid_attributes
      expect {
        delete :destroy, :id => mixtape.id
      }.to change(Mixtape, :count).by(-1)
    end

    it "redirects to the mixtapes list" do
      mixtape = Mixtape.create! valid_attributes
      delete :destroy, :id => mixtape.id
      response.should redirect_to(mixtapes_url)
    end
  end

end