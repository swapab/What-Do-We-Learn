# Learning Elixir

## Elixir projects are usually organized into three directories:

    ebin - contains the compiled bytecode
    lib - contains elixir code (usually .ex files)
    test - contains tests (usually .exs files)

* .ex and .exs

* .exs for scripting

* Elixir treats both files exactly the same way, the only difference is in intention.

* .ex files are meant to be compiled while

* .exs files are used for scripting.

* When executed, both extensions compile and load their modules into memory,

* only .ex files write their bytecode to disk in the format of .beam files.

## Process

* In Elixir, all code runs inside processes.

* Elixir’s processes should not be confused with operating system processes.

* Mailbox: When a message is sent to a process, the message is stored in the process mailbox.

* While other languages would require us to catch/handle exceptions, in Elixir we are actually fine with letting processes fail because we expect supervisors to properly restart our systems.

* “Failing fast” is a common philosophy when writing Elixir software!

* Task to get better error reports.

* group_leader: When you write to :stdio, you are actually sending a message to the group leader, which writes to the standard-output file descriptor

* group_leader: The group leader can be configured per process and is used in different situations. For example, when executing code in a remote terminal, it guarantees messages in a remote node are redirected and printed in the terminal that triggered the request.

## alias, require and import

### alias
* Alias the module, so it can be called as Bar instead of Foo.Bar
alias Foo.Bar, as: Bar

* An alias in Elixir is a capitalized identifier (like String, Keyword, etc) which is converted to an atom during compilation.

### require
* Require the module in order to use it's macros
require Foo

### import
* Import functions from `Foo`, so that they can be called without the prefix `Foo`
import Foo

### use
* Invokes the custom code defined in Foo as extension point

## http://blog.plataformatec.com.br/2017/07/the-fallacies-of-web-application-performance/

Fallacy 1: Performance is only a production concern

* The Elixir compiler and built-in tools will use multiple cores whenever possible. The next time a library, tool or framework is taking too long to do something, ask how many cores it is using and what you can do about it.

Fallacy 2: Threads are enough for multi-core concurrency

* threads are not enough for most web application developers if they still have to explicitly reach out for them

Fallacy 3: Conclusions drawn from average response times

* Response times are not enough. For queues/jobs, you want to at least measure arrival rates, departure rates and sojourn time

Fallacy 4: Cost-free solutions

* Between having a solution that addresses a certain problem and not having the problem at all, I prefer the second.

* “cache invalidation and naming things are the two hard things in computer science”.

Fallacy 5: Performance is all that matters


------------------------------

* HOT CODE RELOAD


