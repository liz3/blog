---
title: A take on why i personally think applications don't need Typescript.
draft: true
---
Typescript adds optional typing ontop of Javascript, its a superset of Javascript.

## What Typescript does
It's important to understand that TypeScript has no impact on your actual running code, since in the compile step or more exactly the transpile step, the type information is entirely removed. There are even transpilers for Typescript that **do not even typecheck**, they only do the transpiling to Javascript.

That being said what typescript does and does really well is that it allows a way more extensive autocomplete and refactoring workflow since refactoring can sometimes use types(structs, interfaces) to determine what to refactor. With a language server(for typescript and in reference Javascript) theres also the feature of a way more extensive and context based autocomplete which can be helpful for speeding up development.

## Whats the issue
With the above it becomes obvious that Typescript is a developer tool and not much more then that, although recently it has become a skill to write extremely abstract types which are very complex to cover all possible cases, whether thats actually needed is up to debate.

The issue is that if you know Javascript very well and have a lot of experience in it, it becomes pretty natural to write code in a way where big refactors are almost never needed and read code in a manner which allows to understand quickly what types a function or routine expects.
Over time when doing JavaScript a lot you learn good design patterns and when a function should be passed a object or when to pass properties directly.
If you are well versed in writing clear JavaScript and reading it efficiently, you will find that typescript does not really speed you up and even tends in some cases to become a bigger tech debt then its benefits by the configurations you need, the transpiler and resulting pipelines.


## Whats the solution
I think there are cases where typescript is worth the cost it imbues, thats Libraries and Frameworks. Those expose apis to a user which the user might not be familiar with and thus having the function signatures, constants and the likes available can help.
Though note that i don't do that because i tend to visit the libraries documentation, but thats a subjective preference.

But for apps and projects it makes little sense it terms of efficiency or speed to have typescript. And **Especially** not in web projects, what do you gain from having types on a react component or a fetch response? Theres no certainty the data will be what you expect. Thats what validators do which can be useful but add a runtime overhead.

Finally i should mention that i think TypeScript would be great if it actually came build into the JS runtime and as a result provides actual performance benefits because the runtime can make assumptions about types which it can't do in a lot of cases in vanilla javascript...so if you write code that doesn't need big refactors and you don't rely on autocomplete a lot, what does Typescript give you?
Before you write me of though consider that my favorite languages(c/c++) are strongly typed.