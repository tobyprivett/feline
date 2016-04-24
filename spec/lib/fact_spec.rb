require "spec_helper"
require "feline"

describe Feline::Fact do
  let(:subject) { Feline::Fact.new }

  before do
    response = double("json", body: sample_json)
    allow(Net::HTTP).to receive(:get_response).with(
        Feline::Cat::FACT_HOST, Feline::Cat::FACT_URI).and_return(response)
  end

  it "parses the json and retrieves a fact" do
    expect(subject.fact).to match(/Mountain lions/)
  end

  def sample_json
    {
      "facts": ["Mountain lions are strong jumpers"],
      "success": "true"
    }.to_json
  end
end
