public class AccountHandler {
    public static void createAccount(List<Account> accList){
            for(Account acc: accList){
            accList=[select id, Name from Account where Name =: acc.Name];
            if(accList.size()>0){
           acc.Name.addError('Account id '+ acc.id + 'Account Name with '+ acc.Name + ' ,is already Exists in the system');    
       		 }
   		 }
	}
}