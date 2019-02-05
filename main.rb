require 'json'
require './project'
require './data'
require 'pp'

def main
  Dir["#{EpubData::EPUB_PATH}/*"].each do |project_path|
    project = Project.new(project_path)
    project.perform
    # projects_hash['groups'] << project.data if project.data
    next if project.data.nil?
    File.open(File.join(EpubData::EPUB_PATH, 'project_files', "#{project.name}.code-workspace"), 'w+') do |f|
      f.write(pp(project.data.to_json))
    end
  end

  # File.open('projects.json', 'w+').write(pp(projects_hash.to_json))
end

main
