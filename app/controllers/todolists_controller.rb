class TodolistsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    #1.データを新規登録するためのインスタンス作成
  　list = List.new(list_params)
  　#2.saveメソッド作成
  　list.save
  　#3.トップ画面にリダイレクト
  　redirect_to '/top'
  end

  private
  #ストロングパラメータ
  　def list_params
  　params.require(:list).permit(:title,:body)
  　end
end
