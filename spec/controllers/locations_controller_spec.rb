require 'rails_helper'

describe LocationsController do
  describe "#create" do
    subject { post :create, { location: { latitude: 25.0, longitude: -40.0 } } }
    
    its(:status) { should == 302 } # redirect
    
    it "saves the location" do
      subject
      Location.all.count.should == 1
    end
    
    it "should redirect to show the created location" do
      subject.should redirect_to( location_path( Location.first.id ))
    end
  end
  
  describe "#new" do
    context "when invalid longitude" do
      subject { post :create, { location: { latitude: 25.0} } }
      
      its(:status) { should == 200 } # OK
      
      it "should render the new view" do
        subject
        response.should render_template("new")
      end
    end
  end
  
  describe "#show" do
    context "when the location exists" do
      let(:location) { Location.create( :latitude => 25.0, :longitude => -40.0) }
      
      subject { get :show, :id => location.id }
      
      it "assigns @location" do
        subject
        assigns(:location).should eq(location)
      end
      
      it "renders the show template" do
        subject
        response.should render_template("show")
      end
    end
  end
end
