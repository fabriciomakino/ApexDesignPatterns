/**
 * @ Company:
 * @ Author: Fabrício Makino
 * @ CreatedDate: 2022-08-14
 * @ Description: AccountBuilder usage example
 */
public with sharing class AccountBuilderClientCode {

    public static Account insertAccountExample() {
        
        Account account = 
            new AccountBuilder()
                .setName('Builder Example')
                .setPhone('(000) 000-0000')
                .getResult();

        insert account;

        return account;

    } 
}