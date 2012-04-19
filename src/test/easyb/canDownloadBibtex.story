import ohtu.*
import ohtu.authentication.*
import org.openqa.selenium.*
import org.openqa.selenium.htmlunit.HtmlUnitDriver;

description 'User can download the bibtex'

scenario "User can see a download link", {
    given 'main page loaded', {
        driver = new HtmlUnitDriver();
        driver.get("http://localhost:9001/main");
    }

    when '?????', {

    }
 
    then 'bibtex link appears', {
        driver.getPageSource().contains("<a href=\"bibtex\">").shouldBe true
    }
}