edit_task.html.erb



<%= form_for(@task) do |f| %>
  <%= f.label :title %>
  <%= f.text_field :title %>
  <%= f.label :details %>
  <%= f.text_field :details %>
  <%= f.label :completed %>
  <%= f.ticket_type :completed %>
  <%= f.submit %>

<% end %>
