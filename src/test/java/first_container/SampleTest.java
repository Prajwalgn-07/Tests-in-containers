package first_container;

import org.testng.annotations.Test;

import java.util.logging.Logger;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;

@Test(groups = "container1")
public class SampleTest {
    static Logger log = Logger.getLogger(SampleTest.class.getName());
    final String FAIL_REASON = "Actual output didn't match the expected output";

    @Test
    void test1() {
        log.info("Executing Container1.test1()");
        assertThat(FAIL_REASON, 1, equalTo(1));
    }

    @Test
    void test2() {
        log.info("Executing Container1.test2()");
        assertThat(FAIL_REASON, 1, equalTo(2));
    }

    @Test
    void test3() {
        log.info("Executing Container1.test3()");
        assertThat(FAIL_REASON, 1, equalTo(1));
    }


    @Test
    void test4() {
        log.info("Executing Container1.test4()");
        assertThat(FAIL_REASON, 1, equalTo(1));
    }


}
