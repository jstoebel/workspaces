require 'json'
require './project'
require './data'
require 'pp'

def main
  projects_file = File.read('projects_template.json')
  projects_hash = JSON.parse(projects_file)
  Dir["#{EpubData::EPUB_PATH}/*"].each do |project_path|
    project = Project.new(project_path)
    project.perform
    projects_hash['groups'] << project.data if project.data
  end

  File.open('projects.json', 'w+').write(pp(projects_hash.to_json))
end

main
