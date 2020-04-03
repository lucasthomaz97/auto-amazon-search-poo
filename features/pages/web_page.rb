class WebPage < SitePrism::Page
    set_url "https://amazon.com.br"
  
    element :search_field, 'input[id="twotabsearchtextbox"]'
    element :search_button, 'input[type="submit"]'
end