import { getPublishedPosts } from '@/lib/posts'
import { getPostVotes } from '@/lib/votes'
import { PlayfulLanding } from '@/components/blog/playful-landing'

export const dynamic = 'force-dynamic'

export default async function HomePage() {
  const posts = await getPublishedPosts()
  
  const postsWithVotes = await Promise.all(
    posts.map(async post => ({
      ...post,
      votes: await getPostVotes(post.slug)
    }))
  )

  return <PlayfulLanding posts={postsWithVotes} />
}
