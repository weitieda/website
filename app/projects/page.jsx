import styles from "./projects.module.css";

const projects = [
  {
    title: "Project Demo",
    href: "https://github.com/weitieda/project-demo",
    description: "A quick demo project from my GitHub."
  }
];

export default function ProjectsPage() {
  return (
    <div className={styles.page}>
      <h1>My Projects</h1>
      <div className={styles.links}>
        {projects.map((project) => (
          <a
            key={project.title}
            className={styles.link}
            href={project.href}
            target="_blank"
            rel="noreferrer"
          >
            {project.title} — {project.description}
          </a>
        ))}
      </div>
    </div>
  );
}
