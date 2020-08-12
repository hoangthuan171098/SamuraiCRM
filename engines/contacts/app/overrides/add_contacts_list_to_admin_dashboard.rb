Deface::Override.new(:virtual_path => "samurai/admin/admin/index",
                    :name => "add_contacts_list_to_admin_dashboard",
                    :insert_after => "[data-samurai-hook='contacts_info']",
                    :partial => "overrides/contacts_list_admin",
                    :namespaced => true
)