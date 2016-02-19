

##Ruby on Rails を練習するためのアプリケーションです。


・クエリーメソッドを使って、コントロラーでデータを呼び出す。
  クエリーメソッドで特別な順番を @birthdays に代入することができる。

・また、特定なデータを取り出せる。
  `@birthdays = Birthday.first(3)`


・この readme ファイルは .md のファイルですけど、<br/>
  新しい rails アプリを作ると、README.rdoc が自動的にgithubで読み込まれる。<br/>
  .md ファイルを追加したらその .md ファイルが優先されるらしい。


二つの項目で順を決めるには、次のような文を書く：<br/>
```
def index
  @birthdays = Birthday.all(month: :asc, day: :asc)
end
```




