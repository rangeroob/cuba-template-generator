require 'cuba/generator'

describe 'create a api', Cuba::Generator do
  subject_api = Cuba::Generator.new('api', 'api')

  it 'create_dir' do
    expect(Dir).to receive(:mkdir)
    subject_api.create_dir
  end

  it 'create_config_file' do
    expect(File).to receive(:open).with('./api/config.ru', 'w+')
    subject_api.create_config_file
  end

  it 'create_cuba_file' do
    expect(File).to receive(:open).with('./api/api.rb', 'w+')
    subject_api.create_cuba_file
  end

  it 'create_gemfile' do
    expect(File).to receive(:open).with('./api/Gemfile', 'w+')
    subject_api.create_gemfile
  end
end

describe 'create a app', Cuba::Generator do
  subject_app = Cuba::Generator.new('app', 'app')

  it 'create_dir' do
    expect(Dir).to receive(:mkdir)
    subject_app.create_dir
  end

  it 'create_config_file' do
    expect(File).to receive(:open).with('./app/config.ru', 'w+')
    subject_app.create_config_file
  end

  it 'create_cuba_file' do
    expect(File).to receive(:open).with('./app/app.rb', 'w+')
    subject_app.create_cuba_file
  end

  it 'create_gemfile' do
    expect(File).to receive(:open).with('./app/Gemfile', 'w+')
    subject_app.create_gemfile
  end
end

describe 'create a blog', Cuba::Generator do
  subject_blog = Cuba::Generator.new('blog', 'blog')

  it 'create_dir' do
    expect(Dir).to receive(:mkdir)
    subject_blog.create_dir
  end

  it 'create_config_file' do
    expect(File).to receive(:open).with('./blog/config.ru', 'w+')
    subject_blog.create_config_file
  end

  it 'create_cuba_file' do
    expect(File).to receive(:open).with('./blog/blog.rb', 'w+')
    subject_blog.create_cuba_file
  end

  it 'create_gemfile' do
    expect(File).to receive(:open).with('./blog/Gemfile', 'w+')
    subject_blog.create_gemfile
  end
end
