require "json"
require "http/client"

class KoreanJson
  def initialize
    @headers = HTTP::Headers {
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://koreanjson.com")
    @http_client = HTTP::Client.new(uri)
  end

  def get_users() : JSON::Any
    JSON.parse(
      @http_client.get("/users", headers: @headers).body)
  end

  def get_posts() : JSON::Any
    JSON.parse(
      @http_client.get("/posts", headers: @headers).body)
  end

  def get_todos() : JSON::Any
    JSON.parse(
      @http_client.get("/todos", headers: @headers).body)
  end

  def get_comments() : JSON::Any
    JSON.parse(
      @http_client.get("/comments", headers: @headers).body)
  end

  def get_user(user_id : Int32) : JSON::Any
    JSON.parse(
      @http_client.get("/users/#{user_id}", headers: @headers).body)
  end

  def get_post(post_id : Int32) : JSON::Any
    JSON.parse(
      @http_client.get("/posts/#{post_id}", headers: @headers).body)
  end

  def get_todo(todo_id : Int32) : JSON::Any
    JSON.parse(
      @http_client.get("/todos/#{todo_id}", headers: @headers).body)
  end

  def get_comment(comment_id : Int32) : JSON::Any
    JSON.parse(
      @http_client.get("/comments/#{comment_id}", headers: @headers).body)
  end
end
