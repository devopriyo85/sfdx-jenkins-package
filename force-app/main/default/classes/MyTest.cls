@isTest
private class MyTest {

    @isTest
    static void myUnitTest() {
        MyClass demo = new MyClass();
        System.assertEquals(demo.getAppVersion(), '1.0.0');
        // Uncomment the following line to cause a build failure
        // System.assert(false);
    }

    @isTest
    static void myUnitTest() {
        Demo2 demo1 = new Demo2();
        System.assertEquals(demo1.getAppVersion2(), '1.0.0');
        // Uncomment the following line to cause a build failure
        // System.assert(false);
    }
}
