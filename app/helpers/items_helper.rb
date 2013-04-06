module ItemsHelper
  def item_link(item)
      link_to item.title, item_url(item)
  end
end
