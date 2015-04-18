module ReverseMarkdown
  module Converters
    class Div < Base
      def convert(node)
        "\n" << treat_children(node) << "\n"
      end
    end

    register :div,     Div.new
    register :article, Div.new
  end
end
