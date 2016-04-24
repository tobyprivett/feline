require "spec_helper"
require "feline"

describe Feline::Browser do

  before do
    allow_any_instance_of(described_class).
      to receive(:`).with("open #{ filename }").and_return("file opened")
  end

  after do
    `rm #{ filename}`
  end

  subject { Feline::Browser.new }

  let(:filename) { subject.filename }

  it "initializes a Feline::Browser" do
    expect(subject).to be_a(Feline::Browser)
  end

  it "generates the cat html" do
    expect(subject.cat_html).to include(Feline::Cat::RANDOM_IMAGE)
  end

  it "generates the filename" do
    expect(filename).to match(/tmp\/cats-.*\.html/)
  end

  it "opens the file" do
    expect(subject.open).to eql("file opened")
  end
end
