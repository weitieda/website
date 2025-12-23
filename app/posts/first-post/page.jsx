import Link from "next/link";
import styles from "../posts.module.css";

export default function FirstPostPage() {
  return (
    <div className={styles.page}>
      <Link className={styles.link} href="/posts">
        ← Back to posts
      </Link>
      <h1>My first post</h1>
      <p className={styles.meta}>2020-03-22 · A description of my first post.</p>
      <p>My first post's text.</p>
    </div>
  );
}
