require './data'
##
# represents a single directory inside your e-pub root.
class Project
  include EpubData
  attr_accessor :data
  def initialize(path)
    @path = path
    @site_name = path.split('/').last
    @engine = jade_child(@site_name)
  end

  ## return hash representing the group (project, jade child (where applicable) and jade )
  def perform
    ensure_valid_project do
      return
    end
    build_projects
  end

  private

  def ensure_valid_project
    # must be a ruby project and have an engine or use jade directly
    yield unless ruby_project? && (@engine || uses_jade_directly?)
  end

  def build_projects
    projects = [
      {
        name: @site_name,
        path: @path,
      },
    ]
    projects << engine_info unless @engine.nil?
    projects << jade_info
    @data = { name: @site_name, projects: projects }
  end

  def engine_info
    {
      name: @engine,
      path: File.join(EPUB_PATH, "jade_#{@engine}"),
    }
  end

  def jade_info
    {
      name: 'jade',
      path: File.join(EPUB_PATH, 'jade'),
    }
  end

  def ruby_project?
    File.exist? "#{@path}/Gemfile"
  end

  def uses_jade_directly?
    jade_in_gemfile? || jade_in_gemspec?
  end

  def jade_in_gemfile?
    File.read(File.join(@path, 'Gemfile')).include?("gem 'jade'")
  end

  def jade_in_gemspec?
    gemspec_path = File.join(@path, "#{@site_name}.gemspec")
    return false unless File.exist?(gemspec_path)
    File.read(gemspec_path).include?("s.add_dependency 'jade'")
  end
end
