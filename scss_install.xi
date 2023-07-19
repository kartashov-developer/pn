SCSS @

Snippets .
. goto://scss.scss
Usage .
  Koala .
  ! Settings: Autoprefix on.
  Scout-App .

  Syntax .
  | .container {
  |   background-color: red;
  |   width: 50vw;
  |   height: 50vh;
  |   &__header {
  |     .gray-button {
  |       color: white;
  |       width: 250px;
  |       padding: 5px 10px;
  |     }
  |   }
  |   &__main {
  |     border: 2px solid grey;
  |   }
  | }
    Variables $ .
    | $text-color: red;
    | color: $text-color;
    Mixins @ .
    | @mixin box {
    |   display: block
    |   width: 250px;
    |   height: 200px;
    | }

    | .container {
    |   @include box;
    | }
