require "ruboty/xa/actions/xa"

module Ruboty
  module Handlers
    class Xa < Base
      on /xa (?<keyword>.+)/, name: "grow_xa", description: "grow xa"
      def grow_xa(message)
        Ruboty::Xa::Actions::Xa.new(message).call
      end
    end
  end
end
