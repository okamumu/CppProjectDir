#include "example.h"

#include "TestHarness.h"

TEST_GROUP(TestExample) {
};

TEST(TestExample, TestRetValueOfFunc1) {
 	LONGS_EQUAL(3, example_func1(1));
}

TEST(TestExample, TestRetValueOfFunc2) {
	LONGS_EQUAL(3, example_func2(2));
}
