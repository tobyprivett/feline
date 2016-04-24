require "spec_helper"
require "feline"

describe Feline::Browser do
  let(:subject) { Feline::Browser.new }

  it "initializes a Feline::Browser" do
    expect(subject).to be_a(Feline::Browser)
  end

  it "generate the cat html" do
    expect(subject.cat_html).to include(Feline::Cat::RANDOM_IMAGE)
  end
end
