/**
 * @ Company:
 * @ Author: Fabrício Makino
 * @ CreatedDate: 2022-08-20
 * @ Description: AccountFactory usage example
 */
public with sharing class AccountFactoryClientCode {

    public static void insertAccountExample() {

        Account account = AccountFactory.createAccountExample();

        insert account;

    }

    public static void insertAccountListExample() {

        List<Account> lstAccount = AccountFactory.createAccountListExample(3);

        insert lstAccount;

    }

}
