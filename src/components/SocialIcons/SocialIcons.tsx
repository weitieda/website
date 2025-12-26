import styles from './SocialIcons.module.css'

function SocialIcons() {
  const socialLinks = [
  {
    href: 'https://github.com/weitieda',
    iconClassName: 'fab fa-github',
    label: 'GitHub',
  },
  {
    href: 'https://www.linkedin.com/in/tieda',
    iconClassName: 'fab fa-linkedin-in',
    label: 'LinkedIn',
  },
  {
    href: 'https://www.instagram.com/twei3',
    iconClassName: 'fab fa-instagram',
    label: 'Instagram',
  },
]

  return (
    <div className={styles.icons}>
      {socialLinks.map((link) => (
        <a
          key={link.href}
          href={link.href}
          target="_blank"
          rel="noreferrer"
          aria-label={link.label}
        >
          <i className={`${link.iconClassName} ${styles.faSocialIcons}`} />
        </a>
      ))}
    </div>
  )
}

export default SocialIcons
