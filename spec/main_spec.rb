describe "'motion-docs'" do

  it "retrieves docs for classes" do
    help = MotionDocs.new("UINavigationController").help
    help.should.include "UINavigationController < UIViewController"
    help.should.not.include "No documentation for"
  end

  it "retrieves docs for class methods" do
    help = MotionDocs.new("UIColor.blueColor").help
    help.should.include "UIColor.blueColor -> UIColor"
    help.should.not.include "No documentation for"
  end

  it "retrieves docs for instance methods" do
    help = MotionDocs.new("UIView#frame").help
    help.should.include "uiview.frame -> CGRect"
    help.should.not.include "No documentation for"
  end
end
