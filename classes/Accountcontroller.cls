public with sharing class Accountcontroller {
   @AuraEnabled (cacheable=true)

    public static List<Account> getAccountList(){

    
    List<Account> accList=[select id,name from Account ORDER BY CreatedDate DESC LIMIT 10];

    return accList;

    }
}