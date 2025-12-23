import Link from "next/link";
import styles from "./home.module.css";

export default function HomePage() {
  return (
    <div className={styles.page}>
      <h1>Tieda Wei</h1>
      <p>I like to build stuff.</p>
      <div className={styles.icons}>
        <a href="mailto:contact@tiedawei.com" target="_blank" rel="noreferrer">
          <i className={`far fa-envelope ${styles["fa-social-icons"]}`}></i>
        </a>
        <a
          href="https://github.com/weitieda"
          target="_blank"
          rel="noreferrer"
          className="github-icon"
        >
          <i className={`fab fa-github ${styles["fa-social-icons"]}`}></i>
        </a>
        <a href="https://www.linkedin.com/in/tieda" target="_blank" rel="noreferrer">
          <i className={`fab fa-linkedin-in ${styles["fa-social-icons"]}`}></i>
        </a>
      </div>
      <div className={styles["my-works"]}>
        <Link className={styles["my-works-a"]} href="/projects">
          View My Projects
        </Link>
        <i className={`fas fa-chevron-right ${styles["fa-chevron-right"]}`}></i>
      </div>
      <footer className={styles.footer}>
        <div>© {new Date().getFullYear()} Tieda Wei. Written in React</div>
      </footer>
    </div>
  );
}
