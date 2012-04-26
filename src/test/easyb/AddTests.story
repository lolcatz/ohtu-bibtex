import ohtu.*;
import ohtu.authentication.*;
import org.openqa.selenium.*;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

// By Valtter Taipale

description 'ADD TESTS'

scenario "Really Simple Add", {
    given 'Add page loaded', {
        driver = new HtmlUnitDriver(true);
        driver.get("http://localhost:9001/add");
    }

    when 'Example Data Loaded into', {
        WebElement element = driver.findElement(By.cssSelector("input[type=\"submit\"]"));
        element.click();
    }
 
    then 'the new data is listed correctly.', {
        driver.get("http://localhost:9001/listaa");
        driver.getPageSource().contains("@book").shouldBe true
    }
}

scenario "Simple Add", {
    given 'Add page loaded', {
        driver = new HtmlUnitDriver(true);
        driver.get("http://localhost:9001/add");

    }

    when 'Example Data Loaded into', {
        //tää on tärkeätä et otetaan talteen tuo submit, muuten jostain syystä ei löydetä sitä myöhemmin
        WebElement element2 = driver.findElement(By.cssSelector("input[type=\"submit\"]"));
        WebElement element = driver.findElement(By.name("key"));
        element.sendKeys("1");
        element = driver.findElement(By.name("author"));
        element.sendKeys("pena");
        element = driver.findElement(By.name("title"));
        element.sendKeys("Trollium");
        element = driver.findElement(By.name("booktitle"));
        element.sendKeys("Trullor");
        element = driver.findElement(By.name("yearvalue"));
        element.sendKeys("2");
        element = driver.findElement(By.name("editor"));
        element.sendKeys("minä");
        element = driver.findElement(By.name("volume"));
        element.sendKeys("3");
        element = driver.findElement(By.name("number"));
        element.sendKeys("4");
        element = driver.findElement(By.name("series"));
        element.sendKeys("5");
        element = driver.findElement(By.name("pages"));
        element.sendKeys("6");
        element = driver.findElement(By.name("address"));
        element.sendKeys("7");
        element = driver.findElement(By.name("month"));
        element.sendKeys("January");
        element = driver.findElement(By.name("organization"));
        element.sendKeys("EvilCorp");
        element = driver.findElement(By.name("publisher"));
        element.sendKeys("GoodInc");
        element = driver.findElement(By.name("note"));
        element.sendKeys("Test");
        element2.click();
    }
 
    then 'the new data is listed correctly.', {
        //driver.get("http://localhost:9001/listaa");
        driver.getPageSource().contains("EvilCorp").shouldBe true
    }
}
