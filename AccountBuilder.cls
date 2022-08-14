/**
 * @ Company:
 * @ Author: Fabrício Makino
 * @ CreatedDate: 2022-08-14
 * @ Description: Design Patterns Creational Builder
 */
public with sharing class AccountBuilder {
    private Account account = new Account();

    public void newAccount() {
        this.account = new Account();
    }

    public void setName(String name) {
        this.account.Name = name;
    }

    public void setPhone(String phone) {
        this.account.Phone = phone;
    }

    public Account getResult() {
        return this.account;
    }
}