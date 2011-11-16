# Formtastic Inputs for Bootstrap

I recently used Twitter's Bootstrap with Formtastic. In order to pull this off I had to do a fair bit of work to get Formtastic's HTML output to be Bootstrap-friendly. I didn't need all of the elements, and I didn't bother getting them all perfect, but this is a very good start. 

## Instructions

  1. Copy the `inputs` and `concerns` folders to your `app` folder (Rails). If you already have one (or both), just copy over the files.
  2. Copy the contents of `initializers/formtastic.rb` to the matching file in your Rails app.
  3. Add the styles from the `stylesheets/formtastic_compatibility.scss` file to your stylesheets. Yes, I used SCSS instead of the native LESS version of Bootstrap. This isn't ideal, I know, but it is what it is.
  