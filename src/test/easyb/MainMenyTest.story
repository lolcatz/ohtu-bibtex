import ohtu.*
import ohtu.authentication.*
import org.openqa.selenium.*
import org.openqa.selenium.htmlunit.HtmlUnitDriver;

// By Valtter Taipale

description 'Main Menu Test'

scenario "User can see link to add new references", {
    given 'main page loaded', {
        driver = new HtmlUnitDriver();
        driver.get("http://localhost:9001/main");
    }

    when 'always', {

    }
 
    then 'bibtex link appears', {
        driver.getPageSource().contains("<a href=\"add\">").shouldBe true
    }
}

scenario "User can see link to references list", {
    given 'main page loaded', {
        driver = new HtmlUnitDriver();
        driver.get("http://localhost:9001/main");
    }

    when 'always' {

    }
 
    then 'bibtex link appears', {
        driver.getPageSource().contains("<a href=\"listaa\">").shouldBe true
    }
}
scenario "User can see link to bibtex download", {
    given 'main page loaded', {
        driver = new HtmlUnitDriver();
        driver.get("http://localhost:9001/main");
    }

    when 'always' {

    }
 
    then 'bibtex link appears', {
        driver.getPageSource().contains("<a href=\"bibtex\">").shouldBe true
    }
}