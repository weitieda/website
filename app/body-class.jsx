"use client";

import { useEffect } from "react";
import { usePathname } from "next/navigation";

const classNames = ["route-projects", "route-posts"];

export default function BodyClass() {
  const pathname = usePathname();

  useEffect(() => {
    const body = document.body;
    classNames.forEach((className) => body.classList.remove(className));
    if (pathname.startsWith("/projects")) {
      body.classList.add("route-projects");
    } else if (pathname.startsWith("/posts")) {
      body.classList.add("route-posts");
    }

    return () => {
      classNames.forEach((className) => body.classList.remove(className));
    };
  }, [pathname]);

  return null;
}
