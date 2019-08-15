module RestaurantsHelper
  def sp_br(text)
    h(text).gsub(/\R/, "<br />").html_safe
  end
end
