import Link from "next/link";
import styles from "./posts.module.css";

const posts = [
  {
    slug: "first-post",
    title: "My first post",
    date: "2020-03-22",
    description: "A description of my first post."
  }
];

export default function PostsPage() {
  return (
    <div className={styles.page}>
      <h1>My Posts</h1>
      <p className={styles.meta}>Thoughts, experiments, and small write-ups.</p>
      <div className={styles.list}>
        {posts.map((post) => (
          <article key={post.slug} className={styles.card}>
            <h2 className={styles.cardTitle}>
              <Link className={styles.link} href={`/posts/${post.slug}`}>
                {post.title}
              </Link>
            </h2>
            <div className={styles.meta}>{post.date}</div>
            <p>{post.description}</p>
          </article>
        ))}
      </div>
    </div>
  );
}
