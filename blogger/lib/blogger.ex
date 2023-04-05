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
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts("Unexpected response code: #{404}")

    end
  end



end
