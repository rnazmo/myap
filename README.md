# myap

A simple CLI audio player for my own use.

## Purpose of this project

1. **For my own use** 
1. **Learning about audio files**, and practicing handling them
1. Practicing making CLI
1. Enjoying coding in Golang :)

## Documentation for users

### Others

- What does the 'myap' mean?
  - 'MY Audio Player'

## Documentation for developers

### Policies

- Very **simple** usage
- **軽い**
  - コーディング時にこれで BGM を流したいので、CPU・メモリへの負荷は低い方が良い
    - Golang でない方がパフォーマンス良いのでは？
      - いつか別言語で書き直すかも？とりあえずGolang で完成させて様子見する
- メンテナンスし易い
  - テスト大事
  - ドキュメントは過不足なく書く
    - 不足が無いのはもちろんだが、シンプルに保ちたい
      - 管理が面倒なので。
- TODO:

### Conventions

TODO:

### Idea

- コーディング時にターミナルで BGM を流すイメージ
- 機能：
  - まずは mp3 ファイルのみとする
  - 再生・一時停止機能
- 操作 (UI)：
  - `$ myap ./example.mp3` で再生を開始する
    - `k`: Toggle play/pause
      - YouTube と同じキー操作 ([Keyboard shortcuts for YouTube - YouTube Help](https://support.google.com/youtube/answer/7631406))
    - `Ctrl+C` で中断
    - 全部再生し終わったら勝手に終わる
- Implementation:
  - 技術選定 (Library 選定):
    - 音声周り：
      - 何もわからない
      - https://github.com/topics/audio?l=go
      - https://github.com/faiface/beep
        - 内部では下記の oto を使っている
      - https://github.com/hajimehoshi/oto
        - context 周り自分で弄ったりするの辛そう (その分勉強にはなりそうだが。)
      - https://github.com/hajimehoshi/go-mp3
        - [go-mp3: Pure Go な MP3 デコーダー - Qiita](https://qiita.com/hajimehoshi/items/9f3b7186ec0b8e2850a4)
        - シンプルで良さそう？
      - とりあえず触りやすそうな faiface/beep で始めるのが良さそう
    - CLI 周り：
      - https://github.com/spf13/cobra
        - 慣れてる。サブコマンドや設定ファイルをやりたいならこっち
      - https://github.com/urfave/cli
        - 使ったこと無いから触ってみたい
      - 練習も兼ねて、ライブラリを使わないのもあり
      - どれにするか未定 (10/04)
    - Release/CI 周り
      - GoReleaser
      - 練習も兼ねて、ライブラリを使わないのもあり
    - CI
      - GitHub Actions
  - Testing:
    - テスト書くの大変そう。どうするんだろう
- 次に実装する：
  - 停止機能？
  - ループ機能
- いつか実装したい？：
  - ミュート機能

### TODO

#### Priority: ☆☆☆

- Do beep tutorial
  - Here: [Hello, Beep! · faiface/beep Wiki](https://github.com/faiface/beep/wiki/Hello,-Beep!)

TODO:

#### Priority: ☆☆

#### Priority: ☆

- Better app namikng:
  - アプリ・リポジトリ名である `myap` (MY Audio Player) は何となく付けただけなので、より良い名前があれば変えたい

### Log

2022-10-04 思い付きで作り始めた
