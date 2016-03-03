module ApplicationHelper
  # When you specify an argument in a method beginning with the splat operator (*),
  # any arguments passed from this point will be available inside the method as an array
  def title(*parts)
    unless parts.empty?
      content_for :title do
        # join the parts together using a hyphen (-), meaning this helper will output something
        # like "TextMate - Projects - Ticketee". (<% title(@project.name, "Projects") %>)
        (parts << "Ticketee").join(" - ")
      end
    end
  end
end
