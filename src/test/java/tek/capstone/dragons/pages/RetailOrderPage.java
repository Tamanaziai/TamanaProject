package tek.capstone.dragons.pages;

import org.openqa.selenium.WebElement;

import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import tek.capstone.dragons.base.BaseSetup;

public class RetailOrderPage extends BaseSetup {

	public RetailOrderPage() {
		PageFactory.initElements(getDriver(), this);

	}

	@FindBy(xpath = "//select[@id='search']")
	public WebElement allDepartmentSection;
	
	@FindBy(xpath ="//option[text()='Smart Home']")
	public WebElement smartHomeOption;
	
	@FindBy(xpath ="//input[@id='searchInput']")
	public WebElement searchInput;
	
	@FindBy(xpath = "//button[@id='searchBtn']")
	public WebElement searchBttn;
	
	//p[text()='Kasa Outdoor Smart Plug']
	@FindBy(xpath = "//div//p[text()='Kasa Outdoor Smart Plug']")
	public WebElement itemKasaOutdoor;
	
	@FindBy(xpath ="//button[@id='addToCartBtn']")
	public WebElement addToCartBttn;

	
	@FindBy(xpath ="//div[@class='product__cart-qty-wrapper']//child::select")
	public WebElement quantityOption;
	
	@FindBy(xpath ="//a[@id='orderLink']")
	public WebElement ordersOption;
	
	@FindBy(css = "p.order__item-name")
	public WebElement firstOrderLink;
	
	@FindBy(css ="button#cancelBtn" )
	public WebElement cancelOrderBttn;
	
	@FindBy(xpath ="//div//p[text()='Apex Legends - 1,000 Apex Coins']")
	public WebElement itemKasaOutdoor2;
	
	@FindBy(xpath = "//div[@id='cartBtn']")
	public WebElement cartOption;
	
	@FindBy(xpath ="//button[@id='proceedBtn']")
	public WebElement proccedBttn;
	
	//@FindBy(xpath ="//button[@id='placeOrderBtn']")
	@FindBy(id="placeOrderBtn")
	public WebElement placeOrderBttn;
	
	@FindBy(xpath = "//div//p[text()='Order Placed, Thanks']")
	public WebElement orderPlacedMessage;
	
	@FindBy(id = "orderLink")
	public WebElement orderBttn;
	
	//div//p[text()='May 11, 2023']
	@FindBy(xpath ="//div//p[@class='order__item-quantity']")
	public WebElement firstOrderInList;
	
	@FindBy(xpath = "//div//button[@id='cancelBtn']")
	public WebElement cancelBttn;
	
	@FindBy(xpath = "//select[@id='reasonInput']")
	public WebElement dropDownForCancleOrder;
	
	@FindBy(xpath = "//div//button[@class='order__cancel-submit']")
	public WebElement cancelOrder;
	
	@FindBy(xpath ="//div//p[text()='Your Order Has Been Cancelled']")
	public WebElement orderCancleMessage;
	
	@FindBy(id ="returnBtn")
	public WebElement retrunItemBttn;
	
	@FindBy(xpath ="//div//select[@id='reasonInput']")
	public WebElement dropDownForReturnOrder;
	
	@FindBy(xpath = "//div//select[@id='dropOffInput']")
	public WebElement dropDownForDropOffservice;
	
	@FindBy(xpath = "//div//button[@class='order__cancel-submit']")
	public WebElement orderRetrunbttn;
	
	@FindBy(xpath = "//div//p[text()='Return was successfull']")
	public WebElement orderReturnMessage;
	
	@FindBy(xpath = "//div//button[@id='reviewBtn']")
	public WebElement reviewBttn;
	
	@FindBy(xpath = "//div//input[@id='headlineInput']")
	public WebElement headlineInput;
	
	@FindBy(xpath = "//div//textarea[@id='descriptionInput']")
	public WebElement descriptionInput;
	
	@FindBy(xpath = "//div//button[@id='reviewSubmitBtn']")
	public WebElement addYourReview;
	
	//div[text()='Your review was added successfully']
	@FindBy(xpath = "//div//div[text()='Your review was added successfully']")
    public WebElement reviewAddedMessage;

	@FindBy(xpath = "//span[@id='cartQuantity']")
    public WebElement cartOption2 ;

   @FindBy(xpath ="//div//p[text()='Show Details']")
   public WebElement showDetailsOption;
	
   @FindBy(xpath = "//button[@id ='loginBtn']")
	public WebElement loginBttn;

   @FindBy(xpath ="//p//span[@class='cart__item-delete']")
   public WebElement deleteOPtion;

}
