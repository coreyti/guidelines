guidelines
==============================================================================

more to come, but it's basically (for now) a Rails engine for providing your
application with style guide(line)s against which to build your views.

...in which "view" is defined as:

  * Rails templates
  * Rails view-related controller logic (e.g., rendering html or json)
  * DOM produced
  * CSS presentation
  * JS behavior
  * Images/fonts/etc.


Requirements
------------------------------------------------------------------------------

  * Rails
  * nokogiri
  * The ability to consider a "view" as incorporating all of the components
    in the definition above and a desire to apply the same degree of
    convention and attention-to-detail to views as to models/controllers/etc.


Installation
------------------------------------------------------------------------------

    gem install guidelines


Usage
------------------------------------------------------------------------------

Add examples to `app/views/guidelines`, in which nested folders are fine.

e.g.,

    # app/views/guidelines/users/show.html.erb
    <%= guideline_for('users#show') do |guideline| %>
      <%= guideline.example do |example| -%>
        <style type="text/css" media="screen">
          /*
            apply page-/example-specific styles here. should be few, as we're
            really testing that things look good based on our app-wide styles.
          */

          <%= example.selector %> > h1 {
            font-weight : bold;
          }
        </style>

        <article class="user" id="user_1">
          <h1>user one</h1>
        </article>
      <%- end -%>
    <%- end -%>


TODO
------------------------------------------------------------------------------

plenty


Contributors
------------------------------------------------------------------------------

  * Corey Innis <http://github.com/coreyti>  
    Author

Acknowledgments
------------------------------------------------------------------------------

  * The IfWeRanTheWorld team <http://ifwerantheworld.com/>  
    for inspiring an exploration into better integration of design and
    development processes (which this project aims to address... over time).
