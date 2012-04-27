import ohtu.*;
import ohtu.authentication.*;
import org.openqa.selenium.*;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.Select;
// By Valtter Taipale

description 'TEST REMOVING DATA'

scenario "Simple Add + Delete", {
    given 'Sample Data Inserted', {
        driver = new HtmlUnitDriver(true);
        driver.get("http://localhost:9001/add");
        WebElement element2 = driver.findElement(By.cssSelector("input[type=\"submit\"]"));
        WebElement element = driver.findElement(By.name("key"));
        element.sendKeys("1");
        element = driver.findElement(By.name("author"));
        element.sendKeys("pena");
        element = driver.findElement(By.name("organization"));
        element.sendKeys("EvilCorp2");
        element2.click();
    }

    when 'Delete Button is clicked', {
        //driver.get("http://localhost:9001/listaa");

        //WebElement element3 = driver.findElement(By.linkText("[delete]"));
        //element3.click();
        //System.out.println(driver.getPageSource());
        //driver.findElement(By.xpath("(//a[contains(text(),'[delete]')])")).click();
        //System.out.println(driver.getPageSource());
        int links = driver.findElementsByXPath("(//a[contains(text(),'[delete]')])").size() ;
        for (int i= 0; i<links;i++) {
            driver.findElement(By.xpath("(//a[contains(text(),'[delete]')])")).click();
        }
    }

    then 'the new data is listed correctly (aka doesnt anymore exist).', {
        //driver.get("http://localhost:9001/listaa");
        //System.out.println(driver.getPageSource());
        driver.getPageSource().contains("EvilCorp2").shouldBe false
    }
}