import ohtu.*
import ohtu.authentication.*
import org.openqa.selenium.*
import org.openqa.selenium.htmlunit.HtmlUnitDriver;

// By Valtter Taipale

description 'List page Tests'

scenario "List page contains working link to main page", {
    given 'list page loaded', {
        driver = new HtmlUnitDriver();
        driver.get("http://localhost:9001/listaa");


    }

    when 'Click on the link', {
        WebElement element = driver.findElement(By.linkText("Back to main page"));
        element.click();
    }
    then 'we are at the main page', {
        driver.getPageSource().contains("Lolcatz's Ohtu Bibtex").shouldBe true
    }
}

scenario "List page contains Tag AND Type Searches", {
    given 'list page loaded', {
        driver = new HtmlUnitDriver();
        driver.get("http://localhost:9001/listaa");

    }

    when 'Always.', {

    }
    then 'The two methods are there', {
        driver.getPageSource().contains("haeTagilla").shouldBe true
        driver.getPageSource().contains("haeTypella").shouldBe true
    }
}