Deface::Override.new(
  :virtual_path => "spree/admin/users/index",
  :name => "referral_code_header",
  :insert_before => "[data-hook='admin_users_index_headers'] th:nth-child(2)",
  :text => "<th class='align-center'><%= Spree.t(:referrals) %></th>"
)
Deface::Override.new(
  :virtual_path => "spree/admin/users/index",
  :name => "referral_code",
  :insert_before => "[data-hook='admin_users_index_rows'] td:nth-child(2)",
  :text => "<td class='align-center'><%= user.referred_count %></td>"
)
