module Ruboty
  module Xa
    module Actions
      class Xa < Ruboty::Actions::Base
        def initialize(message)
          @message = message
        end

        def call
          message.reply(grow_xa)
        end

        private

        def grow_xa
        end
      end
    end
  end
end
