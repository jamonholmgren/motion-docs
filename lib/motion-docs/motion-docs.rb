if !(UIDevice.currentDevice.model =~ /simulator/i).nil?
  class MotionDocs
    attr_reader :subject

    COLORS = {
      gray:         "\e[1;30m",
      red:          "\e[0;31m",
      light_red:    "\e[1;31m",
      green:        "\e[0;32m",
      light_green:  "\e[1;32m",
      yellow:       "\e[0;33m",
      light_yellow: "\e[1;33m",
      blue:         "\e[0;34m",
      light_blue:   "\e[1;34m",
      purple:       "\e[0;35m",
      light_purple: "\e[1;35m",
      cyan:         "\e[0;36m",
      light_cyan:   "\e[1;36m",
      white:        "\e[0m",
      off:          "\e[0m",
    }

    def initialize(subject)
      @subject = subject
    end

    def help
      ri_docs = `HOME=/tmp /Library/RubyMotion/lib/yard/bin/yri --db /Library/RubyMotion/doc/yardoc #{subject}`
      colorized(ri_docs)
    end

    private

    def colorized(ri_docs)
      color = :blue
      ri_docs.split("\n").map do |ri_line|
        if ri_line == ""
          nil
        elsif ri_line.include?(" Class:") || ri_line.include?(" Method:")
          color = :blue
          colored_text ri_line.split(":", 2).last.strip, :light_blue
        elsif ri_line.start_with? "--------------"
          nil
        elsif ri_line == ""
          nil
        elsif ri_line == "Includes:"
          color = :purple
          colored_text ri_line, :light_purple
        elsif ri_line == "Class methods:"
          color = :yellow
          colored_text ri_line, :light_yellow
        elsif ri_line == "Instance methods:"
          color = :green
          colored_text ri_line, :light_green
        elsif ri_line == "Direct Known Subclasses:" || ri_line == "Overloads:"
          color = :cyan
          colored_text ri_line, :light_cyan
        elsif ri_line == "Parameters:"
          color = :gray
          colored_text ri_line, :white
        elsif ri_line == "Returns:"
          color = :red
          colored_text ri_line, :light_red
        else
          colored_text ri_line, color
        end
      end.compact.join("\n")
    end

    def colored_text(ri_line, color=:blue)
      "#{COLORS[color]}#{ri_line}#{COLORS[:off]}"
    end
  end
end
