require 'rails_helper'

describe Location do
  
  describe "#initialize" do
    it "sets the latitude and longitude" do
      loc = Location.new(latitude: 38.911268, longitude: -77.444243)
      loc.latitude.should eq(38.911268)
      loc.longitude.should eq(-77.444243)
    end
    
    it "sets the latitude to 0 and longitude to 1" do
      loc = Location.new(latitude: 0, longitude: 1)
      loc.latitude.should eq(0)
      loc.longitude.should eq(1)
    end
  end

  describe "validations" do
    before { subject.valid? }
    [ :latitude, :longitude ].each do |coordinate|
      context "when #{coordinate} is nil" do
        subject { Location.new(coordinate => nil) }
        
        it "shouldn't allow blank #{coordinate}" do
          expect(subject.errors_on(coordinate)).to include("can't be blank")
        end
      end
      
      context "when #{coordinate} isn't numeric" do
        subject { Location.new(coordinate => 'forty-two') }
        
        it "shouldn't allow non-numeric #{coordinate}" do
          expect(subject.errors_on(coordinate)).to include("is not a number")
        end
      end
      
      context "when #{coordinate} is an acceptable value" do
        subject { Location.new(coordinate => 42.0) }
        
        it "should have no errors for #{coordinate}" do
          expect(subject).to have(0).errors_on(coordinate)
        end
      end
    end
  end
end
