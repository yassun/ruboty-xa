module Ruboty
  module Xa
    module Actions
      class Xa < Ruboty::Actions::Base
        XA_LETTERS = %w[ｗ Ｗ]
        XA_MAX_LENGTH = 6

        def initialize(message)
          @message = message
        end

        def call
          message.reply(grow_xa)
        end

        private

        def grow_xa
          keyword = message[:keyword]
          keyword.gsub!(/(。+)/, make_xa)
          keyword.gsub!(/(、+)/, make_xa)
          keyword.gsub!(/(!+)/, make_xa)
          keyword.gsub!(/($)/, make_xa)
          keyword.gsub!(/(\r\n|\r|\n)/, make_xa)
          keyword
        end

        def make_xa
          xa_length.times.inject("") { |xa| xa + XA_LETTERS.sample }
        end

        def xa_length
          rand(XA_MAX_LENGTH) + 1
        end
      end
    end
  end
end
