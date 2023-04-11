public class AOPDemo {
    public static void main(String[] args) {
        AOPDemo demo = new AOPDemo();
        demo.method1(45);
        demo.method1(22, "hello");
        demo.method2("welcome");
    }

    public void method1(int n) {
        System.out.println("method1(int n) code....");
    }

    public void method1(int n, String s) {
        System.out.println("method1(int n, String s) code....");
    }

    public void method2(String n) {
        System.out.println("method2(String s) code....");
    }
}
