if !defined?(UIDevice) || !(UIDevice.currentDevice.model =~ /simulator/i).nil?
  class MotionDocs
    VERSION = "0.1.0" unless defined?(MotionDocs::VERSION)
  end
end
