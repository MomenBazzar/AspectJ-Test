public class Main {
    public static void main(String[] args) throws Exception {
        Bank bank = new Bank("my bank");
        Account account1 = new Account(1, 1000);
        Account account2 = new Account(2, 2000);
        Account account3 = new Account(3, 3000);

        bank.addAccount(account1);
        bank.addAccount(account2);
        bank.addAccount(account3);

        bank.removeAccount(account2);

        account1.withdraw(4000); // this throws an exception and doesn't allow Transaction completed
    }
}
