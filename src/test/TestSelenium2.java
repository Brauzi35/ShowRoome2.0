package test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.junit.Test;


import static org.junit.Assert.*;

public class Testselenium2 {
   public static void main(String[] args) {
	   System.setProperty("webdriver.chrome.driver","Driver/chromedriver.exe");
	   WebDriver driver2 = new ChromeDriver();
	   driver2.get("http://localhost:8080/FinaleIspw/register");
	   driver2.findElement(By.xpath("//*[@id=\"username\"]")).clear();
	   driver2.findElement(By.xpath("//*[@id=\"username\"]")).sendKeys("Gimmy13");
	   driver2.findElement(By.xpath("//*[@id=\"password\"]")).clear();
	   driver2.findElement(By.xpath("//*[@id=\"password\"]")).sendKeys("password");
       driver2.findElement(By.xpath("/html/body/p[2]/input")).click();
	   
     


	  
   }
}


