require 'rails_helper'

describe ImageUploader do
  subject(:image_uploader) { described_class.new(task, :image) }

  let(:task) { build(:task) }
  let(:file_name) { 'image.jpg' }
  let(:path_to_file) { "#{fixture_path}/images/#{file_name}" }

  before do
    described_class.enable_processing = true
    File.open(path_to_file) { |file| image_uploader.store!(file) }
  end

  after do
    described_class.enable_processing = false
    image_uploader.remove!
  end

  it 'when resize to #thumb' do
    expect(image_uploader.thumb).to be_no_larger_than(ImageUploader::RESIZE_SIZE, ImageUploader::RESIZE_SIZE)
  end
end
