if !(UIDevice.currentDevice.model =~ /simulator/i).nil?
  class Object
    def self.ri
      puts MotionDocs.new(self.inspect).help
    end
    def self.docs; ri; end
    def ri
      self.class.ri
    end
    alias docs ri
  end

  class String
    def ri
      puts MotionDocs.new(WeakRef.new(self)).help
    end
    alias docs ri
  end

  module Kernel
    def ri(subject)
      puts MotionDocs.new(subject.to_s).help
      nil
    end
    alias docs ri
  end
end
