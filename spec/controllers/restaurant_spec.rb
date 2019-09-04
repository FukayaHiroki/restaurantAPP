require 'rails_helper'
RSpec.describe 'post_comment', type: :system do
  # let(:user) { create(:user) }
  # before { login_user(user) }
  # let(:restaurant) { create(:restaurant, id: 1, user_id: 1) }
  it 'creates post' do
    visit restaurant_path(id: 54)
  
    fill_in '名前', with: '美食家'
    fill_in 'コメントの内容', with: '本当においしいお店だ'
    click_button ('コメントする')

    expect(page).to have_content('美食家', '本当に美味しいお店だ')
  end

  # it 'edits post' do
  #   post
  #   create(:post_description, post_id: 1)
  #   visit edit_post_path(post)

  #   fill_in 'post[title]', with: 'テストタイトル２'
  #   fill_in 'post[post_description_attributes][description]', with: 'テスト詳細２'
  #   click_button(I18n.t('common.button.submit'))

  #   expect(page).to have_content('テストタイトル２', 'テスト詳細２')
  # end
end