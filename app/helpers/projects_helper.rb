module ProjectsHelper
  def project_link(project)
      link_to project.title, project_url(project)
  end
end
