import Foundation

struct Post: Decodable
{
  let userId: Int
  let id: Int  
  let title: String
  let body: String
}

extension Post
{
    static var dummyPost: [Post] = 
    [ Post(userId: 1, id: 1,title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",body: "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto")]
}
