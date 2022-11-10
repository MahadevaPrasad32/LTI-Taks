public class AddDeleteRowLWCController {

    @AuraEnabled
    public static List<Account> getAccounts(){
        return [SELECT Id, Name, AccountNumber, Site FROM Account ];
    }
    @AuraEnabled
    public static Account addAccount(String account){
        Account accObj = (Account) System.JSON.deserialize(account, Account.class);
        insert accObj;
        return accObj;
    }
}