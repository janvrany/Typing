# Typing

*Typing* is a testbed for typing related experiments in Smalltalk.

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

