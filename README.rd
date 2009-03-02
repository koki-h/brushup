= このサイトについて

== えーっとアレだよ。アレ。

「えーっとアレだよ。アレ。おかしいなぁ。ついこの間覚えたはずなのに」

私も年をとってきたせいか、モノの名前がすっと出てこなくなってしまいました。

その度に、「私はなんて忘れっぽいんだろう」と落ち込んでいました。

しかし、人は一般的に忘れっぽい生き物のようなのです。

== 人は忘れっぽい
心理学者のヘルマン・エビングハウスさんが「人間の記憶」について以下の様な実験を行いました。

実験
 子音・母音・子音」から成り立つ無意味な音節（rit,pek,tas...）を記憶し、それをどの位の時間までどの程度覚えていられるか。

この実験の結果は驚くべきものでした。

<img src="/images/forget_graph.png" alt="Forget_Graph"/>

結果
 20分後には、42%を忘却し、58%を覚えていた。
 1時間後には、56%を忘却し、44%を覚えていた。
 1日後には、74%を忘却し、26%を覚えていた。
 1週間後には、77%を忘却し、23%を覚えていた。
 1ヶ月後、には79%を忘却し、21%を覚えていた。 

なんと、たった1週間ほどで記憶した知識の77％は忘れてしまうそうです。

必死に本を読んで知識を得ても、たった一週間後にほとんど内容は頭の中から消えてしまう事になります。

== でも覚える事はいっぱい
近年、Webの普及に伴って、多くの情報が身近に溢れています。

必死になって最新の情報を追いかけても、それを忘れてしまっては意味がありません。

情報過多な社会だからこそ、一つ一つ確実に自分の知識として情報を定着させる必要があります。

では、ある事柄をしっかりと自分の知識に定着する為にはどうすればよいでしょうか。

== 忘れないためには復習するべし！
物事を自分の記憶に定着させる為には「復習」が非常に大事になってきます。

1日後に復習をすると、その知識は一週間は維持されると言われています。

続いて1週間後に復習をすると、その知識は1ヶ月は維持されると言われています。

1ヶ月後に復習をすると、その知識は半年は維持されると言われています。

半年後に復習をすると、その知識は長期的な記憶となり、自分の電話番号くらいの身近な知識になるそうです。

== 絶対に復習したい
このサイトは堕落した私（作者）のような人間でも確実に復習できる事を目指しています。

このサイトでは自分が覚えたいトピックに関する復習内容を登録する事ができます。
登録する復習内容は自由です。

例えば、
* 「reminder」という英単語の意味の復習
* C言語アルゴリズム本の復習
のようなものです。

なるべく自分が絶対に覚えたい項目を登録する方がいいでしょう。

そして、登録した復習内容は先ほど説明した、
* 1日後
* 1週間後
* 1ヶ月後
* 半年後
のタイミングでお知らせしてくれます。

それを知ったユーザは自分が登録した復習内容を遂行し、しっかりと記憶に定着できるという仕組みです。

== 便利な使い方
復習項目を新規登録する際に便利なブックマークレットです。

((<復習を追加する|URL: javascript:window.open('<%= url_for(:only_path => false, :controller => :reminders, :action => :new, :mode => "confirm")-%>', '_blank', 'width=520,height=750,resizable=1,scrollbars=1');undefined;>))

また、各一覧画面ではRSSを購読可能です。

特に「今日の復習」をお好きなRSSリーダで購読しておくと便利です。

== 注意事項
登録した復習内容は全てのユーザが閲覧可能です．

人に見られたくないような内容は絶対に登録しないでください．

例えば，パスワードや銀行の暗証番号などです．

== 新規アカウント作成
当サイトではOpenIDでのみユーザ認証を行っています。

以下サイトのOpenIDで動作を確認しています。

* ((<mixi|URL: http://mixi.jp/>))
* ((<livedoor|URL: http://auth.livedoor.com/openid/>))
* ((<openid.ne.jp|URL: http://www.openid.ne.jp/>))
* ((<はてな|URL: http://www.hatena.ne.jp/info/openid>))

OpenIDを所有していない人は上記のいずれかのサイトでアカウントを新規に作成してください。

OpenIDの作成方法や、仕組みついてはこちらをご覧ください。

((<OpenID.ne.jp|URL: http://www.openid.ne.jp/>))

== お問い合わせ
感想や要望などはauthorNari at gmail.comにメールしてください。

作者は((<nari|URL: http://d.hatena.ne.jp/authorNari/>))です。

ソースコードはこちらで公開しています(((<brushup - Github|URL: http://github.com/authorNari/brushup/>)))
