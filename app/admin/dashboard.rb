ActiveAdmin.register_page "Dashboard" do

  menu false

  content title: "Zoodle Admin" do
    if user_signed_in?
        if current_user.admin
            p "You have admin access."
        else
            p "You do not have admin access."
        end
    end
  end
end
