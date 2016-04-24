module Feline
  class Fact
    def initialize
      @fact = JSON.parse(response.body)["facts"].first
    end

    def fact
      @fact
    end

    def response
      Net::HTTP.get_response(
        Feline::Cat::FACT_HOST, Feline::Cat::FACT_URI
      )
    end
  end
end
