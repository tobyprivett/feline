require "spec_helper"
require "feline"

describe Feline::Fact do
  let(:subject) { Feline::Fact.new }

  it "initializes a Feline::Fact" do
    expect(subject).to be_a(Feline::Fact)
  end
end
