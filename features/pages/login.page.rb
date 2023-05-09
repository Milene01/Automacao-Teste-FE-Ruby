class LoginPage < SitePrism::Page

    set_url ''
    element :emailField, :id, "session_key"
    element :passwordField, :id, "session_password"
    element :loginButton, :xpath, "/html/body/main/section[1]/div/div/form[1]/div[2]/button"

    def userLogin
        emailField.set (email)
        passwordField.set (password)
        loginButton.click
    end
end

