module BoatsHelper
  def bool_to_image(bool)
    image_tag((bool) ? 'yes.gif' : 'no.gif')
  end
end
