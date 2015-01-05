require "ruboty/xa/actions/xa"

module Ruboty
  module Handlers
    class Xa < Base
      on /xa (?<keyword>.+)/, name: "grow_xa", description: "grow xa"
    end
  end
end
