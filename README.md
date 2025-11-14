# korean_json.cr
Web-API for [koreanjson.com](https://koreanjson.com/) super simple JSON API in Korean

## Example
```cr
require "./korean_json"

korean_json = KoreanJson.new
users = korean_json.get_users()
puts users
```
