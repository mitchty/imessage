# imessage

imessage is a rather contrived interface to imessage.

Internally all it amounts to is a wrapper over osascript. Note, this is my
first "real" project in Haskell so any input on better ways to do things
is appreciated.

## Installation

```cabal install imessage```

## Usage

First up, lets assume you have buddies on your list. There are 2 ways to
send a message via the osascript bridge. First is their name.

Lets assume you have a buddy named *Foo Bar* with a phone number of
*+1 123 456 7890*

This gives you two different ways to send, either their name directly,
or their phone number. Note, we'll also assume that both the email and the
phone number are associated with the same imessage account.

(note, in 10.10 Yosemite using the bridge you can also send to your
text only friends)

### Via Fullname

```imessage --to Foo\ Bar -m -- some message```

### Via Phonenumber

```imessage --num 11234567890 -m -- some message```

## How to run tests

```
cabal configure --enable-tests && cabal build && cabal test
```

## Contributing

If anyone finds this useful besides me I'll be shocked. I'm willing to change
pretty much whatever, this is all for fun and to finally be able to send
messages to friends from the commandline. I'm weird that way.

## Todo

Lots, for one, read the sqlite db backend so I can read messages.

Maybe make a curses-alike interactive gui. No idea first had to scratch
an itch.

Group messages? Not yet sure how to identify or create these.

Probalby mad amounts more that could be done.
