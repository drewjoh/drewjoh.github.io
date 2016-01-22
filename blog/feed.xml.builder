<% if paginate && num_pages > 1 %>
  <p>Page <%= page_number %> of <%= num_pages %></p>

  <% if prev_page %>
    <p><%= link_to 'Previous page', prev_page %></p>
  <% end %>
<% end %>

<% page_articles.each_with_index do |article, i| %>
  <h2><%= link_to article.title, article %> <span><%= article.date.strftime('%b %e') %></span></h2>
  <!-- use article.summary(250) if you have Nokogiri available to show just
       the first 250 characters -->
  <%= article.body %>
<% end %>

<% if paginate %>
  <% if next_page %>
    <p><%= link_to 'Next page', next_page %></p>
  <% end %>
<% end %>