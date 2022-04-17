({
	 modelClick : function (cmp, event, helper) {
        alert("You clicked: " + event.getSource().get("v.label"));
    },
    
    dealersClick : function (cmp, event, helper) {
        alert("You clicked: " + event.getSource().get("v.label"));
    },
    
    serviceClick : function (cmp, event, helper) {
        alert("You clicked: " + event.getSource().get("v.label"));
    }
})