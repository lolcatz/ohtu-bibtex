import ohtu.*;
import ohtu.authentication.*;
import org.openqa.selenium.*;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.Select;
// By Valtter Taipale

description 'ADD PAGE TESTS'

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
        element.sendKeys("a1");
        element = driver.findElement(By.name("author"));
        element.sendKeys("a2");
        element = driver.findElement(By.name("title"));
        element.sendKeys("a3");
        element = driver.findElement(By.name("booktitle"));
        element.sendKeys("a4");
        element = driver.findElement(By.name("yearvalue"));
        element.sendKeys("a5");
        element = driver.findElement(By.name("editor"));
        element.sendKeys("a6");
        element = driver.findElement(By.name("volume"));
        element.sendKeys("a7");
        element = driver.findElement(By.name("number"));
        element.sendKeys("a8");
        element = driver.findElement(By.name("series"));
        element.sendKeys("a9");
        element = driver.findElement(By.name("pages"));
        element.sendKeys("a10");
        element = driver.findElement(By.name("address"));
        element.sendKeys("a11");
        element = driver.findElement(By.name("month"));
        element.sendKeys("a12");
        element = driver.findElement(By.name("organization"));
        element.sendKeys("a13");
        element = driver.findElement(By.name("publisher"));
        element.sendKeys("a14");
        element = driver.findElement(By.name("note"));
        element.sendKeys("a15");
        element2.click();
    }
 
    then 'the new data is listed correctly.', {
        //driver.get("http://localhost:9001/listaa");
        driver.getPageSource().contains("@book").shouldBe true
        for (int i=1;i<16;i++)
            driver.getPageSource().contains("a"+i).shouldBe true
    }
}


scenario "Testing type article", {
    given 'Add page loaded', {
        driver = new HtmlUnitDriver(true);
        driver.get("http://localhost:9001/add");

    }

    when 'Example Data Loaded into', {
        //tää on tärkeätä et otetaan talteen tuo submit, muuten jostain syystä ei löydetä sitä myöhemmin
        new Select(driver.findElement(By.id("menu"))).selectByVisibleText("Article");
        //System.out.println(driver.getPageSource())
        List<WebElement> element2 = driver.findElementsByCssSelector("input[type=\"submit\"]");
        int i = 0
        for (WebElement option : element2) {
            if (i-1 == element2.size())
                option.click();
            i++
        }
        WebElement element = driver.findElement(By.xpath("(//input[@name='key'])[2]"));
        element.sendKeys("g1");
        element = driver.findElement(By.xpath("(//input[@name='author'])[2]"));
        element.sendKeys("g2");
        element = driver.findElement(By.xpath("(//input[@name='title'])[2]"));
        element.sendKeys("g3");
        element = driver.findElement(By.xpath("(//input[@name='yearvalue'])[2]"));
        element.sendKeys("g4");
        element = driver.findElement(By.xpath("(//input[@name='volume'])[2]"));
        element.sendKeys("g5");
        element = driver.findElement(By.xpath("(//input[@name='number'])[2]"));
        element.sendKeys("g6");
        element = driver.findElement(By.xpath("(//input[@name='pages'])[2]"));
        element.sendKeys("g7");
        element = driver.findElement(By.xpath("(//input[@name='month'])[2]"));
        element.sendKeys("g8");
        element = driver.findElement(By.xpath("(//input[@name='note'])[2]"));
        element.sendKeys("g9");
        for (WebElement option : element2) {
            if (i-1 == element2.size()) {
                option.click();
                break;
            }
            i++
        }
    }

    then 'the new data is listed correctly.', {
        //System.out.println(driver.getPageSource())
        //driver.get("http://localhost:9001/listaa");
        driver.getPageSource().contains("@article").shouldBe true
        for (int i=1;i<10;i++)
            driver.getPageSource().contains("g"+i).shouldBe true
    }
}


scenario "Testing type inproceedings", {
    given 'Add page loaded', {
        driver = new HtmlUnitDriver(true);
        driver.get("http://localhost:9001/add");

    }

    when 'Example Data Loaded into', {
        //tää on tärkeätä et otetaan talteen tuo submit, muuten jostain syystä ei löydetä sitä myöhemmin
        new Select(driver.findElement(By.id("menu"))).selectByVisibleText("Inproceedings");
        //driver.executeScript("test();");

        //System.out.println(driver.getPageSource())
        List<WebElement> element2 = driver.findElementsByCssSelector("input[type=\"submit\"]");
        int i = 0
        for (WebElement option : element2) {
            if (i-1 == element2.size())
                option.click();
            i++
        }
        WebElement element = driver.findElement(By.xpath("(//input[@name='key'])[2]"));
        element.sendKeys("u1");
        element = driver.findElement(By.xpath("(//input[@name='author'])[2]"));
        element.sendKeys("u2");
        element = driver.findElement(By.xpath("(//input[@name='editor'])[2]"));
        element.sendKeys("u3");
        element = driver.findElement(By.xpath("(//input[@name='title'])[2]"));
        element.sendKeys("u4");
        element = driver.findElement(By.xpath("(//input[@name='publisher'])[2]"));
        element.sendKeys("u5");
        element = driver.findElement(By.xpath("(//input[@name='yearvalue'])[2]"));
        element.sendKeys("u6");
        element = driver.findElement(By.xpath("(//input[@name='volume'])[2]"));
        element.sendKeys("u7");
        element = driver.findElement(By.xpath("(//input[@name='number'])[2]"));
        element.sendKeys("u8");
        element = driver.findElement(By.xpath("(//input[@name='series'])[2]"));
        element.sendKeys("u9");
        element = driver.findElement(By.xpath("(//input[@name='address'])[2]"));
        element.sendKeys("u10");
        element = driver.findElement(By.xpath("(//input[@name='edition'])"));
        element.sendKeys("u11");
        element = driver.findElement(By.xpath("(//input[@name='month'])[2]"));
        element.sendKeys("u12");
        element = driver.findElement(By.xpath("(//input[@name='note'])[2]"));
        element.sendKeys("u13");
        //System.out.println(driver.getPageSource())
        for (WebElement option : element2) {
            if (i-1 == element2.size()) {
                option.click();
                break;
            }
            i++
        }
    }

    then 'the new data is listed correctly.', {
        //System.out.println(driver.getPageSource())
        //driver.get("http://localhost:9001/listaa");
        driver.getPageSource().contains("@inproceedings").shouldBe true
        for (int i=1;i<14;i++)
            driver.getPageSource().contains("u"+i).shouldBe true
    }
}
