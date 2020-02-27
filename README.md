# SampleCocoaPods

# CocoaPodsの導入
[公式サイト](https://cocoapods.org/)のinstallの通りにやる

# iOSの新規プロジェクトを作成する

<img src="https://i.gyazo.com/e86abd08ef5107fd828bdcfaf895efc1.png" width=300 />

# pod initをする
ターミナルでこのプロジェクトフォルダの直下で以下を実行

```sh
pod init
```

無事に終了するとプロジェクト直下に`Podfile`ができている

<img src="https://i.gyazo.com/a1fd5ab6e3ad4a60ac569ce0dbf425bc.png" width=300 />

Podfileを開くと中身がこうなっている
```podfile
# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'SampleCocoaPods' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for SampleCocoaPods

  target 'SampleCocoaPodsTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'SampleCocoaPodsUITests' do
    # Pods for testing
  end

end
```

# Podfileに使いたいライブラリを追加する
[Alamofire](https://github.com/Alamofire/Alamofire)を入れる場合

`Podfile`内の`# Pods for SampleCocoaPods`直下にAlamofireで記載されている `pod 'Alamofire', '~> 5.0'` を追記する

```podfile
# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'SampleCocoaPods' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for SampleCocoaPods
  pod 'Alamofire', '~> 5.0'

  target 'SampleCocoaPodsTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'SampleCocoaPodsUITests' do
    # Pods for testing
  end

end

```
#CocoaPodsで管理しているライブラリを追加する

ターミナルで実行
```sh
pod install
```

無事にインストールが終わったターミナル
<img src="https://i.gyazo.com/db6979dc1f2525c0f93452373de13a30.png" width=600 />

プロジェクトに
`Podfile.lock`, `Podsフォルダ`, `XXXX.xcworkspace`の３つが増える
<img src="https://i.gyazo.com/be800e33ff04bc27f6e1349afda22341.png" width=300 />


# プロジェクトを開く
***XXXX.xcworkspace***の方を開く

自身のプロジェクトとPodsのプロジェクトがあることを確認する

<img src="https://i.gyazo.com/2cb0c2f4104d17f4286f36ed61a2a53b.png" width=300 />

# 終わり
あとは `import Alamofire` をするとソース内でalamofireが使える
