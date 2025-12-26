import styles from './SocialIcons.module.css'

function SocialIcons() {
  return (
    <div className={styles.icons}>
      <a
        href="https://github.com/weitieda"
        target="_blank"
        rel="noreferrer"
        className={styles.githubIcon}
      >
        <i className={`fab fa-github ${styles.faSocialIcons}`} />
      </a>
      <a href="https://www.linkedin.com/in/tieda" target="_blank" rel="noreferrer">
        <i className={`fab fa-linkedin-in ${styles.faSocialIcons}`} />
      </a>
      <a
        href="https://www.instagram.com/twei3"
        target="_blank"
        rel="noreferrer"
        className={styles.ytbIcon}
      >
        <i className={`fab fa-instagram ${styles.faSocialIcons}`} />
      </a>
    </div>
  )
}

export default SocialIcons
