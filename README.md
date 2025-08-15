# Typing

*Typing* is backward-compatible, gradual, pluggable dependent refinement typing system for Smalltalk.

 * Backward-compatible means that it does not require any changes
   to Smalltalk syntax nor the compiler.
 * Gradual means that you may add typing to variables and methods
   incrementally as you work on the code. In another words, you
   do not *have* to type variables and methods if you do not want
   to.
 * Pluggable means that it allows multiple type systems to coexist,
   all using the same type annotations.
 * Refinement means that one can express any predicate that must must
   hold - like "an integer such that it is greater than zero and less
   then five."
 * Dependent means that typing may depend on other values, like
   (refinement) type of a second argument may depend on the first
   argument.

## Examples

```
    self assert: index is: Integer | [ :v | v > 0 ].
```

For more examples, see class [TypingExamples](https://github.com/janvrany/Typing/blob/master/src/Typing-Examples/TypingExamples.class.st).

## How to load

### ...into Pharo

```
Metacello new
  baseline: 'Typing';
  repository: 'github://janvrany/Typing';
  load.|
```

### ...into Smalltalk/X

 1. Clone the repository:

    ````
    git clone https://github.com/janvrany/Typing.git
    ````

 2. In Smalltalk/X, execute:

    ```
    "/ Tell Smalltalk/X where to look for Typing packages
    Smalltalk packagePath add: '/where/you/cloned/it/Typing'.

    "/ Load Typing
    Smalltalk loadPackage: 'BaselineOfTyping'.
    ```

