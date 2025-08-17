import { getPublishedPosts } from '@/lib/posts'
import { getPostVotes } from '@/lib/votes'
import { PlayfulLanding } from '@/components/blog/playful-landing'

export const dynamic = 'force-dynamic'

export default function HomePage() {
  const posts = getPublishedPosts()
  
  const postsWithVotes = posts.map(post => ({
    ...post,
    votes: getPostVotes(post.slug)
  }))
  
  return <PlayfulLanding posts={postsWithVotes} />
}
