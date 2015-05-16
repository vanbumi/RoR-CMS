# RoR-CMS
RoR-CMS is a CMS based on Ruby on Rails.<br>

The RoR-CMS has a back-end features that are similiar to Wordpress.
<br><br>
<h3>Installation</h3>
1. Make sure the repository successfully clone<br>
2. Copy config/database.yml.sample and rename it into config/database.yml<br>
3. Change the username and the database according to your configuration<br>
4. Run "bundle install"<br>
5. Run "rake db:migrate"<br>
6. Insert a data into options table<br>
7. Run the server with "rails s"<br>
8. Create a user from the "/users/sign_up" page<br>
<br>
<h3>Prevent user from sign up</h3>
If the application for personal use and you don't want another user for the application, you can remove sign up URL.<br>
Open app/models/user.rb and remove :registerable so your file look like below;
<pre>
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :confirmable, :recoverable, :rememberable, :trackable, :validatable
end
</pre>

More information about devise: https://github.com/plataformatec/devise
