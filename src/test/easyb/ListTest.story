import ohtu.*
import ohtu.authentication.*
import org.openqa.selenium.*
import org.openqa.selenium.htmlunit.HtmlUnitDriver;

// By Valtter Taipale

description 'List page Tests'

scenario "List page contains link to main page", {
    given 'main page loaded', {
        driver = new HtmlUnitDriver();
        driver.get("http://localhost:9001/listaa");
        WebElement element = driver.findElement(By.linkText("main"));
        element.click();
    }

    when 'always', {

    }
 
    then 'return to main page link appears', {
        driver.getPageSource().contains("Lolcatz's Ohtu Bibtex").shouldBe true
    }
}