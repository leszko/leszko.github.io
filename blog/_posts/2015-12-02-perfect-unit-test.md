---
layout: post
image:  assets/images/blog/2015-12-02-perfect-unit-test.jpg
title: Perfect Unit Test
---

This is a perfect unit test.

```java
@Test
public void Should_Sum_When_ArgumentsAreSmall() {  
   // given
   Sumator sumator = new Sumator();

   // when
   Integer result = sumator.sum(1, 2);

   // then
   assertThat(result).isEqualTo(3);
}
```

Take a look. Take a deep look. If all your unit tests look like this, you’re saved. Your career will be stunning. You’ll have a great job, a lot of money, loving family and happiness forever and ever. But first…let’s have a walk through a few helpful rules.

## Rules

I won’t write here about some fundamental unit test principles like that your tests should not connect to the database or use random numbers. You probably already know it. If not, there are a lot of publications. Just grab Bob Martin’s Clean Code or read good old [FIRST principles](http://agileinaflash.blogspot.com/2009/02/first.html).

Here I would like to give a few hints how to make your tests shining. Polish it until it’s simply perfect or perfectly simple.

### 1. Give it a good name
Look at the [conventions](https://dzone.com/articles/7-popular-unit-test-naming) and agree on one with your colleagues. Don’t mix styles in one project. That would increase the disorder (which is too high in most projects anyway). No matter which convention you use, note that there are always two parts: **state under test** and **expected behavior**. They should correspond to the code in your test method.
- **state under test** - corresponds to the `//given //when` sections. Look at the method name: `ArgumentsAreSmall`, look at the code, integers: 1 and 2 are small. Makes sense. Try to avoid something like `ArgumentsAreCorrect`. It’s neither precise nor true, all integers are correct!
- **expected behavior** - corresponds to the //then section. Your assertion should be in line with the test name. If you need an assertion like `assertNotNull(result)` then your method should be called `Should_NotReturnNull_When_ArgumentsAreSmall()`.

### 2. Perfect structure: // given // when // then
Like a mantra. Passed from generation to generation. Just perfect. Comes from BDD, but consider using it in every test you write. Everyone knows it. Everyone likes it. I’ve even met some evangelists wearing given-when-then T-Shirts. Even Mockito [changed its API](http://ketiljensen.wordpress.com/2009/08/28/behaviour-driven-development-with-mockito/) when they realized that `when(mock.doSomething()).thenReturn(something)` ends up in the `// given` section. Now you can write it properly: `given(mock.doSomething()).willReturn(something)`.

Consider starting your test with three comments: `//given //when //then`. Then write the code.

Try not to skip any of the sections. If you have nothing to write, then just put a comment:

```
// then
// throws exception
```
Try not to merge any sections.
```
// given when then
assertThat(new Sumator().sum(1, 2)).isEqualTo(3);  
```

If you do so, developers who read your code would lose their precious brain’s CPU cycles in order to realize what you test. Is it the constructor? isEqualTo() method? Make them separate. Always separate, always clear.

What’s more, try not to change the order of the sections and not to repeat any of them. Keep it simple. People will like you.

### 3. Use the simplest values possible
Tests are not only to test. They also explain the responsibility of a class. When I read the code, I often jump directly to the unit test in order to understand it. There is a reason why I’ve put numbers: 1 and 2 in the perfect test case. They are the simplest arguments to test the expected behavior. Imagine if I had used 87 and 40. First question would be: why 87? What is special about 87? Does Sumator act differently in case of 87? Is it summed in a different manner?

Precious brain’s cycles. Think about the values you use. For example, if any string is fine then use something like “fooBar”, “anything” or “anyString”. Don’t put real data if it doesn’t matter. There is a place for real data in your component, acceptance or end-to-end testing. For unit tests, try to think about the simplest values that test the behavior. KISS.

### 4. One Assertion Only, please!
Test one thing only. If you want to test two things, create two tests. As simple as that. One thing means one assertion corresponding to the method name.

I’m sure that for each test scenario you could think of thousands extra assertions which would test your result better. In my perfect test I could add something like:

```
assertNotNull(result);
```

Again, reading it, you need to spend extra time to understand what the author wanted to test. Which assertion is the right one?

I think it’s clear. A lot of great programmers wrote about it. Uncle Bob wrote about it. You can find it in the “Clean Code” and in the “The Art of Unit Testing” books. Nevertheless, it’s still common to see tests like this:

```java
@Test
public void Should_ReturnTwoSums_When_TwoPairs() {  
   // given
   Sumator sumator = new Sumator();

   List<Pair> pairs = asList(new Pair(1, 2), new Pair(3, 4));

   // when
   List<Integer> result = sumator.sumPairs(pairs);

   // then
   assertThat(result).isNotNull();
   assertThat(result.size()).isEqualTo(2);
   assertThat(result).isEqualTo(asList(3, 7));
}
```

The question is: why would anyone need the first two assertions? To fail fast? To have a better assertion message? Probably this test will never fail and even if, the `NullPointerException` is pretty clear, isn’t it?

Value simplicity over “testing all that could be tested”. Try not to think what assertion you could add to make your test even “safer”. And what mock should also be verified. Focus rather on what you really want to test. And that should already be in the test name.

If you still feel you need more than one assertion then consider:
- Splitting your test into two (each having one assertion)
- Writing a custom assertion method aggregating other assertions (that can be the case if, for example, you would like to test that all fields of your object are null). It’s still one logical assertion, but technically need to be expressed with many asserts. That’s ok.

### 5. Good libraries will save your life!
Use good libraries. It’s not only about having Mockito on board. There are many many more. JUnit4 is getting better, but still it’s not the best you can get. Think about assertions.

```
assertEquals(expected, actual);  
```

I will never understand why they put expected as the first argument. It’s so counter-intuitive. If you like fluent API, use AssertJ or Google Truth. If not, at least hamcrest.

Think about using features like `@Parameters` and `@Theory`. They will help you to avoid loops with assertions. Consider TestNG or JUnitParams, especially if you want to mix parameterized and non-parameterized tests in a one test class.

Consider testing your tests. Coverage tools like: JaCoCo, Clover or Cobertura will help. Even better, use PIT for mutation testing. Check it in your IDE. Consider putting it in your CI.

## Summary: When to unit test?
When to write unit tests? I would start from the 100% coverage. Preferably checked with the mutation testing. Follow the good Agile rule: mimic -> experiment -> innovate.

Later, if your team is mature, you can step away from the strict coverage rules. But it's better not to start from that, because it will only get worse. The point is to skip writing a test when it’s not necessary, not to skip it when it’s hard to write.

Good companies deliver with boxes. Good programmers deliver with tests. Test is a part of the code. To quote the classic of Robert Martin: “How can you know your code works? That’s easy. Test it. Test it again. Test it up. Test it down. Test it seven ways to Sunday!”
