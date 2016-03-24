#rails101s - 蘇介吾 104/06/02

這是 Rails 101s 的程式原始碼，我只是拿來練習用，版權沒有，歡迎拷貝。

可以對照Xdite的大作Rails 101(第三版)線上教程
http://growth.xdite.net/courses/rails-101

![Demo](https://github.com/afgnsu/rails101s/blob/master/DEMO.png)
![Demo1](https://github.com/afgnsu/rails101s/blob/master/DEMO1.png)
![Demo2](https://github.com/afgnsu/rails101s/blob/master/DEMO2.png)
![Demo3](https://github.com/afgnsu/rails101s/blob/master/DEMO3.png)
![Demo4](https://github.com/afgnsu/rails101s/blob/master/DEMO4.png)
![Demo5](https://github.com/afgnsu/rails101s/blob/master/DEMO5.png)


以下環境是用Ubuntu Linux來安裝Ruby on Rails：

1.安裝RVM
```
cd   回到家目錄 (/home/patrick)
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
echo 'source /home/patrick/.rvm/scripts/rvm' >> ~/.bashrc
exit    後重新登入
rvm -v   有出現表示rvm 有安裝成功
```

2.安裝Ruby 2.2.0
```
rvm install 2.2.0
ruby -v
```

3.安裝Rails 4.2.0
```
rvm gemset create rails420
rvm use 2.2.0@rails420 --default
gem update --system
echo 'gem: --no-rdoc --no-ri' > ~/.gemrc
gem install rails -v 4.2.0
rails -v
```

4.啟動Rails 101s
```
git clone https://github.com/afgnsu/rails101s.git    #下載本專案
cd rails101s   #會依照 .rvmrc 的設定，自動切換到正確的RoR版本
bundle
vi config/database.yml    #修改mysql的root密碼
rake db:create    #建立bbs_development資料庫
rake db:migrate   #建立groups、posts、group_users、users資料表
rails s
打開瀏覽器，輸入網址 http://localhost:3000 就可以開始操作了 ^_^
```

##最後歡迎加入『桃園Ruby on Rails讀書會』=> https://www.facebook.com/groups/tyror/

>Patrick Su (蘇介吾)

>104/06/02 14:32p @ 桃園楊梅
>http://fb.me/afgnsu
>0921-380-997
