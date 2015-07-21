public class OutfitListController {
    public List<Outfit__c> outfits{get;set;}
    public String name{get;set;}
    public String email{get;set;}
    public OutfitListController(){
    	System.debug('This is outfitListController....');
        Map<String,String> parameters=ApexPages.currentPage().getParameters();
        name=parameters.get('name');
        email=parameters.get('email');
        this.outfits=[SELECT Id,Name,Work_Style__c,Evening_Style__c,Shirt_Fit__c,Trousers_Fit__c,Brand__c,Size__c FROM Outfit__c WHERE Account__r.Email__c=:this.email];
        
    }
    
   
}