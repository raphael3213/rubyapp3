class User < ActiveRecord::Base
before_save{self.email=email.downcase}
validates :name ,presence:true ,length:{maximum:52}
REGEXa=/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :email,presence:true,length:{maximum:255}, format:{with:REGEXa},uniqueness:{case_sensitive:false}
has_secure_password
validates :password ,length:{minimum:6}
end
