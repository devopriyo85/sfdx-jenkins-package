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
    static void myUnitTest3() {
        MyClass demo = new MyClass();
        System.assertEquals(demo.getAppVersion12(), '1.0.0');
        // Uncomment the following line to cause a build failure
        // System.assert(false);
    }
    @isTest
    static void myUnitTest4() {
        MyClass demo = new MyClass();
        System.assertEquals(demo.checkAppVersion123(), '1.0.0');
        // Uncomment the following line to cause a build failure
        // System.assert(false);
    }
    @isTest
    static void myUnitTest5() {
        Demo2 demo1 = new Demo2();
        System.assertEquals(demo1.getAppVersion31(), 'Hello world');
        // Uncomment the following line to cause a build failure
        // System.assert(false);
    }

    @isTest
    static void myUnitTest5() {
        MyClass demo = new MyClass();
        System.assertEquals(demo.checkAppVersion1234(), '2.0.0');
        // Uncomment the following line to cause a build failure
        // System.assert(false);
    }

    @isTest
    static void myUnitTest6() {
        Demo2 demo1 = new Demo2();
        System.assertEquals(demo1.getAppVersion32(), 'Hello world');
        // Uncomment the following line to cause a build failure
        // System.assert(false);
    }

    @isTest
    static void myUnitTest1() {
        Demo2 demo1 = new Demo2();
        System.assertEquals(demo1.getAppVersion2(), '1.0.0');
        // Uncomment the following line to cause a build failure
        // System.assert(false);
    }

    @isTest
    static void myUnitTest2() {
        Demo2 demo1 = new Demo2();
        System.assertEquals(demo1.getAppVersion3(), 'Hello');
        // Uncomment the following line to cause a build failure
        // System.assert(false);
    }
}
