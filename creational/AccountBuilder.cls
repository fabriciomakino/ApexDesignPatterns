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

    public AccountBuilder setName(String name) {
        this.account.Name = name;
        return this;
    }

    public AccountBuilder setPhone(String phone) {
        this.account.Phone = phone;
        return this;
    }

    public Account getResult() {
        return this.account;
    }
}