require "spec_helper"
require "feline"

describe Feline::File do

  before do
    open_uri = double("open_uri", read: "foo")
    allow_any_instance_of(Feline::File).
      to receive(:open).with(Feline::Cat::RANDOM_IMAGE).and_return(open_uri)

    allow_any_instance_of(described_class).
      to receive(:`).with("mv #{ filename } ~/Desktop/").and_return("file moved")
  end

  after do
    `rm #{ filename}`
  end

  subject { Feline::File.new }

  let(:filename) { subject.filename }

  it "generates the filename" do
    expect(filename).to match(/tmp\/cat-.*\.gif/)
  end

  it "moves the file" do
    expect(subject.move).to eql("file moved")
  end
end
