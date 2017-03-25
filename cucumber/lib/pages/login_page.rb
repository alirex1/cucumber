class LoginPage
  include PageObject

  text_field(:email, id: 'identifier-shown')
  button(:signIn, value: 'Next')

  unordered_list(:errors) do |page|
    page.div_element(id:'errormsg_0_Email').unordered_list_element
  end
  def next(data = {})
    populate_page_with data_for(:login_page, data)
    signIn
  end
end