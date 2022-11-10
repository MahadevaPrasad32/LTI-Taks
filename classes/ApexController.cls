public with sharing class ApexController {
    @AuraEnabled(cacheable=true)
    public static List<Account> displayAccounts(){
        List<Account> acclist=[select Id,Name from Account ORDER BY CreatedDate DESC LIMIT 10];
        return acclist;
    }
    @AuraEnabled
   public static List<Account> updateRecord(String accId){
       System.debug('@@@@AccountId@@@'+accId);
       Account acc=[select Id,Name from Account where Id=:accId];
       acc.Name='Approved';
       try{
           update acc;
       }
       catch (Exception e) {
        System.debug('unable to update the record due to'+e.getMessage());
    }
    return displayAccounts();
}

}