module Differ
  module StringDiffer
    def diff(old)
      Differ.diff(self, old, $; || "\n")
    end
    alias :- :diff
    
    def diff_by_char(old)
      Differ.diff(self, old, '')
    end

    def diff_by_word(old)
      Differ.diff(self, old, /\b/)
    end

    def diff_by_line(old)
      Differ.diff(self, old, "\n")
    end
  end
end

String.class_eval do
  include Differ::StringDiffer
end