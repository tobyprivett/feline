require "spec_helper"
require "feline"

describe Feline::File do
  let(:subject) { Feline::File.new }

  it "initializes a Feline::File" do
    expect(subject).to be_a(Feline::File)
  end
end
