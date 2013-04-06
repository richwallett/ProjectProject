module TeamsHelper
  def team_link(team)
      link_to team.name, team_url(team)
  end
end
