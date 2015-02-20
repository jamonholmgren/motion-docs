if !(UIDevice.currentDevice.model =~ /simulator/i).nil?
  class Object
    def self.docs(method_name=nil)
      subject = self.to_s
      if method_name
        subject << "." unless method_name.start_with?("#") || method_name.start_with?(".")
        subject << method_name.to_s
      end
      puts MotionDocs.new(subject).help
    end
    def self.ri(m=nil); docs(m); end
  end

  class String
    def docs
      puts MotionDocs.new(self).help
    end
    alias ri docs
  end

  module Kernel
    def docs(subject)
      puts MotionDocs.new(subject.to_s).help
      nil
    end
    alias ri docs
  end
end
