module UsersHelper

  def gravatar_for(user, options = { size: 80 })
    # オプション引数よりもキーワード引数の方が簡潔に実装できる
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

end
