defmodule BloggerTest do
  use ExUnit.Case
  doctest Blogger


  test "fetches a blog post from URL" do
    {:ok, body} = Blogger.fetch_blog("https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91")
    assert String.contains?(body, "Quick connect to your Amazon ec2 linux instance through the command line")
  end
end
