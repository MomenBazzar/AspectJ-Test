public aspect BankAccountCountAspect {

    pointcut accountAddition(Account account): call(* Bank.addAccount(Account)) && args(account) && target(Bank);
    pointcut accountRemoval(Account account): call(* Bank.removeAccount(Account)) && args(account) && target(Bank);

    after(Account account) returning : accountAddition(account) || accountRemoval(account) {
        Bank bank = (Bank) thisJoinPoint.getTarget();
        System.out.println("Number of accounts in bank: " + bank.getAccounts().size());
    }
}
