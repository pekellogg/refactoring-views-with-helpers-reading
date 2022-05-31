# "authors"
# t.string   "name"
# t.string   "genre"
# t.text     "bio"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# --------> has_many :posts

# "posts"
# t.string   "title"
# t.text     "description"
# t.datetime "created_at",  null: false
# t.datetime "updated_at",  null: false
# t.boolean  "post_status"
# t.integer  "author_id"
# --------> belongs_to :author

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# @author.books.build([
#   { published_at: Time.now, book_number: "A12346" },
#   { published_at: Time.now, book_number: "A12347" }
# ])

stephen = Author.create!(name: "Stephen King", genre: "thriller", bio: "Stephen Edwin King is an American author of horror, supernatural fiction, suspense, crime, science-fiction, and fantasy novels.")
stephen.posts.build([{title: "Carrie", description: "Carrie is a horror novel by American author Stephen King. It was his first published novel, released on April 5, 1974, with a first print-run of 30,000 copies.", post_status: true }])

stephen.save

stacey = Author.create!(name: "Stacey Abrams", genre: "political thriller", bio: "Stacey Yvonne Abrams is an American politician, lawyer, voting rights activist, and author who served in the Georgia House of Representatives from 2007 to 2017, serving as minority leader from 2011 to 2017.")
stacey.posts.build([
    {title: "Lead From the Outside", description: "In Lead from the Outside, Stacey Abrams argues that knowing your own passion is the key to success, regardless of the scale or target. From launching a company, to starting a day care center for homeless teen moms, to running a successful political campaign, finding what you want to fight for is as critical as knowing how to turn thought into action. Stacey uses her experience and hard-won insights to break down how ambition, fear, money, and failure function in leadership, while offering personal stories that illuminate practical strategies.",
    post_status: true },
    {title: "Our Time Is Now", description: "This is a narrative that describes the urgency that compels me and millions more to push for a different American story than the one being told today. It's a story that is one part danger, one part action, and all true. It\'s a story about how and why we fight for our democracy and win.",
    post_status: true },
    {title: "While Justice Sleeps", description: "A gripping, complexly plotted thriller set within the halls of the U.S. Supreme Court, where a young law clerk finds herself embroiled in a shocking mystery crafted by one of the most preeminent judges in America—from celebrated national leader and bestselling author Stacey Abrams.", post_status: true }
])

stacey.save