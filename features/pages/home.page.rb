class HomePage < SitePrism::Page
    element :userName, :css, "div.t-16"
    element :navBarHome, :css, ".global-nav__primary-link--active > span:nth-child(2)"
    element :myIcon, :css, "#ember14 > span:nth-child(2)"

    def checkLoginSuccessful
        expect(userName.text).to eql "Milene Cavalcant"
        expect(navBarHome.text).to eql "Início"
        expect(myIcon.text).to eql "Eu"
    end
end