import org.testng.annotations.Test;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;

public class Runner {

    @Test(groups = "test1")
    void test1() {
        System.out.println("Hello World");
        assertThat("Yes", 1, equalTo(1));
    }

    @Test(groups = "test2")
    void test2() {
        System.out.println("Hello World");
        assertThat("Yes", 1, equalTo(1));
    }

    @Test(groups = "test3")
    void test3() {
        System.out.println("Hello World3");
        assertThat("Yes", 1, equalTo(1));
    }

    @Test(groups = "test4")
    void test4() {
        System.out.println("Hello World4");
        assertThat("Yes", 1, equalTo(1));
    }
}
