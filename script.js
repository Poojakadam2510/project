

function add_to_cart(pid,ptitle,pprice) {

    let cart=localStorage.getItem("cart");
    if(cart == null)
    {
        //no cart yet
        let products=[];
        let product={productId:pid,productName:ptitle,productQuantity:1,productPrice:pprice}
        products.push(product);
        localStorage.setItem("cart",JSON.stringify(products));
        console.log("product is added for the first time")
    } else
    {
        //cart is already present
        let pcart=JSON.parse(cart);

        let oldproduct = pcart.find((item) => item.productId == pid)
        console.log(oldproduct)
        if(oldproduct)
        {
            //we have to increase the product
            oldproduct.productQuantity=oldproduct.productQuantity+1
            pcart.map((item) => {
                if (item.productId == oldproduct.productId)
                {
                    item.productQuantity = oldproduct.productQuantity;
                }
            })
            localStorage.setItem("cart",JSON.stringify(pcart));
            console.log("product quantity increased")
        }else
        {
            //we have to  add the quantity
            let product={productId:pid,productName:ptitle,productQuantity:1,productPrice:pprice}
            pcart.push(product);
            localStorage.setItem("cart", JSON.stringify(pcart));
            console.log("product is added")
        }
    }

}
//update cart

function updateCart()
{
    let cartString=localStorage.getItem("cart");
    let cart=JSON.parse(cartString);
    if(cart==null || cart.length==0)
    {
      console.log("Cart is empty !!")
        $(".cart-items").html("( 0 )");
        $(".cart-body").html("<h3>cart does not have any items </h3>");
        $(".checkout-btn").addclass('disabled');
   }else
    {
        console.log(cart)
    }

}