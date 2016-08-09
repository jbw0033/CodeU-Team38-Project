#cs-swapping-implementations-lab

## Objectives

1.  Compile and run Java code and tests.
2.  Replace one implementation with another.
3.  Try out two errors: overspecifying a type or trying to instantiate an interface.


## Warming up

Since this is the first lab, we'll keep it simple.  You will take the code from the previous README and "swap the implementation"; that is, you will replace the LinkedList with an ArrayList.  Because the code "programs to an interface", you will be able to swap the implementation by changing a single line (and adding an `import` statement).


## Instructions


*   Set up your development environment.  For this Track you will need to be able to compile and run Java code.  We developed the examples using the using Java SE Development Kit 7. If you are using a more recent version, everything should still work.  If you are using an older version, you might find some incompatibilities.

    We recommend using an IDE like Eclipse that provides syntax-checking, auto-completion, and source code refactoring.  These features help you avoid errors or find them quicky.  However, if you are preparing for a technical interview, remember that you will not have these tools during the interview, so you might also want to practice writing code without them.

    Either way, we'll assume that you know how to compile and run Java code in your environment of choice.
    
*   When you check out the repository for this lab, you should find these files:

    *  CONTRIBUTING.md contains information about how you can notify us if you find a problem in a lesson.
    
    *  javacs-lab01 is a directory that contains the source code for this lab.
    
    *  LICENSE.md contains license information about these materials.
    
    *  README.md contains the text you are reading now.
    
*   If you open `javacs-lab01`, you'll find these files:

    *  bin contains compiled `class` files.  
    
    *  build.xml is an Ant file that makes it easier to compile and run the code.
    
    *  lib contains the libraries you'll need (for this lab, just JUnit).
    
    *  src contains the source code.
    
*   And if you navigate into `src/com/flatironschool/javacs`, you'll find the source code for this lab:

    *  `ListClientExample.java` contains the code from the previous README.

    *  `ListClientExampleTest.java` contains a JUnit test for `ListClientExample`. 

*   Review `ListClientExample` and make sure you understand what it does.  Then compile and run it.  If you use Ant, you can navigate to `javacs-lab01` and run `ant ListClientExample`.  [You can read about Ant here](https://ant.apache.org/manual/tutorial-HelloWorldWithAnt.html).

    NOTE: You might get a warning like `List is a raw type. References to generic type List<E> should be parameterized`.  To keep the example simple, we didn't bother to specify the type of the elements in the List.  If this warning bothers you, you can suppress it by replacing each List or LinkedList with `List<Integer>` or `LinkedList<Integer>`.


*   Review `ListClientExampleTest`.  It runs one test, which creates a `ListClientExample` invokes `getList`, and then checks whether the result is an ArrayList.  Initially, this test will fail because the result is a LinkedList, not an ArrayList.  Run this test and confirm that it fails.

    NOTE: This test makes sense for this exercise, but it is not a good example of a test.  Good tests should check whether the class under test satisfies the requirements of the *interface*; they should not depend on the details of the *implementation*.


*   In the `ListClientExample`, replace LinkedList with ArrayList.  You might have to add an import statement.  Compile and run `ListClientExample`.  Then run the test again.  With this change, the test should now pass.


*   To make this test pass, you only had to replace `LinkedList` with `ArrayList` in the constructor.  You did not have to change any of the places where `List` appears.  What happens if you do?  Go ahead and replace one or more appearances of `List` with `ArrayList`.  The program should still work correctly, but now it is "overspecified".  If you change your mind in the future and want to swap the interface again, you would have to change more code.


*  In the `ListClientExample` constructor, what happens if you replace `ArrayList` with `List`?  Why can't you instantiate a `List`?

