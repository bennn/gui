#lang scribble/doc
@(require "common.ss"
          (for-label mrlib/name-message))

@title{Switchable Button}

@defmodule[mrlib/switchable-button]

@defclass[switchable-button% canvas% ()]{

A @scheme[switchable-button%] control displays
and icon and a string label. It toggles between
display of just the icon and a display with the 
label and the icon side-by-side.

@defconstructor/auto-super[([label string?][callback (-> (is-a?/c switchable-button%) any/c)] [bitmap (is-a?/c bitmap%)])]{
The @scheme[callback] is called when the button
is pressed. The @scheme[string] and @scheme[bitmap] are
used as discussed above.}

@defmethod[(set-label-visible [visible? boolean?]) void?]{
  Sets the visibility of the string part of the label.
}
}
