defmodule Blogger do
  use HTTPoison.Base


  def to_upper_case(strings) do
    Enum.map(strings, &String.upcase/1)
  end

  
  def fetch_blog(url) do
    response = get(url)

    case response do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        IO.puts("Successfully fetched blog post!")
        body
      {:ok, %HTTPoison.Response{status_code: code}} ->
        IO.puts("Unexpected response code: #{code}")
        ""
      {:error, reason} ->
        IO.puts("Failed to fetch blog post: #{reason}")
        ""
    end
  end



end
