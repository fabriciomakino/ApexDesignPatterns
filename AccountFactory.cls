/**
 * @ Company:
 * @ Author: Fabrício Makino
 * @ CreatedDate: 2022-08-20
 * @ Description: Design Patterns Creational Factory
 */
public with sharing virtual class AccountFactory {

    public static List<Account> createAccountListExample(Integer quantity) {
        List<Account> lstAccount = new List<Account>();

        for (Integer i = 0; i < quantity; i++) {
            lstAccount.add(
                createAccountExample()
            );
        }

        return lstAccount;
    }

    public static Account createAccountExample() {
        return new Account(
            Name = 'Factory Example',
            Phone = '(000) 000-0000'
        );
    }
}
