public aspect DemoAspect {
    pointcut callDemoAspectPointcut() :
            call(void AOPDemo.method1(*));

    after() : callDemoAspectPointcut() {
        System.out.println("Demo aspect - after");
    }
}