module PostsHelper
  def render_post_content(post)
    truncate(simple_format(post.content), lenth: 50)
  end
end
