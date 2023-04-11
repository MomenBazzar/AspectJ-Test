public aspect AccountLoggingAspect {
    pointcut depositOrWithdraw() : execution(* Account.deposit(..)) || execution(* Account.withdraw(..));

    before() : depositOrWithdraw() {
        System.out.println("Transaction started...");
    }

    after() returning : depositOrWithdraw() {
        System.out.println("Transaction completed.");
    }

}
