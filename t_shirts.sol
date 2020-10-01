

contract t_shirt {
    struct Order_instances{
        uint contractor_id;
        uint quantity;
        uint cost;
        bool accept;
        bool complete;
        bool payment;
    }



    Order_instances []orders;
    
    address public beachTshirts = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    address public threadsInc = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;

    //restrict to beach t shirts
    function NewOrder (uint contractor_id, uint quantity) public {
        require(msg.sender == BeachTshirts);
        Order_instances memory ord=Order_instances(contractor_id, quantity, 0, "To be verified", "To be verified", "To be verified");
	    Order_instances.push(ord); 
    }
    function PaymentMethod (uint contractor_id) public {
        require(msg.sender == beachTshirts);
    uint i; 
	for(i=0;i<orders.length;i++) 
	{ 
		Order_instances memory ord=orders[i]; 
		if(ord.contractor_id==contractor_id) 
		{ 
				ord.payment = true; 
				orders[i] = o;
		} 
	} 
    }
    
    function GetOrder(uint contractor_id) public view returns( uint,uint,uint,bool,bool,bool)
    { 
	uint i; 
	for(i=0;i<orders.length;i++) 
	{ 
		Order_instances memory ord=orders[i]; 
		if(ord.contractor_id==contractor_id) 
		{ 
				return(ord.id,ord.quantity,ord.cost,ord.accept,ord.complete, ord.payment); 
		} 
	} 
	return(0,0,0,false,false,false); 
}
    
    //restrict to Threads Inc    
    function Order_Accept (uint contractor_id) public {
        require(msg.sender == threadsInc);
    uint i; 
	for(i=0;i<orders.length;i++) 
	{ 
		Order_instances memory ord=orders[i]; 
		if(ord.contractor_id==contractor_id) 
		{ 
				ord.accept = true; 
				orders[i] = ord;
		} 
	} 
    }
    function Completion_confirmation (uint contractor_id) public {
        require(msg.sender == threadsInc);
    uint i; 
	for(i=0;i<orders.length;i++) 
	{ 
		Order_instances memory ord=orders[i]; 
		if(ord.contractor_id==contractor_id) 
		{ 
				ord.complete = true; 
				orders[i] = o;
		} 
	} 
    }
    function Share_Cost (uint contractor_id, uint c)public{
        require(msg.sender == threadsInc);
    uint i; 
	for(i=0;i<orders.length;i++) 
	{ 
		Order_instances memory o=orders[i]; 
		if(ord.contractor_id==contractor_id) 
		{ 
				ord.cost = c; 
				orders[i] = o;
		} 
	} 
    }
}


    

 

