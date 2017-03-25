class HomePage
  include PageObject

  page_url FigNewton.baseurl
  button(:sign_in, id: 'gb_70',class:'gb_cf gb_Ia gb_yb')

end