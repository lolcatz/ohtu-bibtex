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
        WebElement element = driver.findElement(By.linkText("Add new reference"));
        element.click();
    }
 
    then 'add link is there', {
        driver.getPageSource().contains("Lisää viite").shouldBe true
    }
}

scenario "User can see link to references list", {
    given 'main page loaded', {
        driver = new HtmlUnitDriver();
        driver.get("http://localhost:9001/main");
    }

    when 'always', {
        WebElement element = driver.findElement(By.linkText("List all references"));
        element.click();
    }
 
    then 'reference list link is there', {
        driver.getPageSource().contains("JSP Page").shouldBe true
    }
}
scenario "User can see link to bibtex download", {
    given 'main page loaded', {
        driver = new HtmlUnitDriver();
        driver.get("http://localhost:9001/main");
    }

    when 'always', {

    }
 
    then 'bibtex link download is there', {
        driver.getPageSource().contains("<a href=\"bibtex\">").shouldBe true
    }
}