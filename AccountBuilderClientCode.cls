/**
 * @ Company:
 * @ Author: Fabrício Makino
 * @ CreatedDate: 2022-08-14
 * @ Description: AccountBuilder usage example
 */
public with sharing class AccountBuilderClientCode {

    public static Account insertAccountExample() {
        
        AccountBuilder accountBuilder = new AccountBuilder();
        accountBuilder.setName('AccountBuilder Test');
        accountBuilder.setPhone('(000) 000-0000');

        Account account = accountBuilder.getResult();

        insert account;

        return account;

    } 
}