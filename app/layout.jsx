import "./globals.css";
import Script from "next/script";
import BodyClass from "./body-class";

export const metadata = {
  title: "Tieda Wei",
  description: "I like to build stuff."
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <head>
        <link
          rel="stylesheet"
          href="https://unpkg.com/purecss@1.0.1/build/pure-min.css"
          integrity="sha384-oAOxQR6DkCoMliIh8yFnu25d7Eq/PHS21PClpwjOTeU2jRSq11vu66rf90/cZr47"
          crossOrigin="anonymous"
        />
        <link
          rel="stylesheet"
          href="https://unpkg.com/purecss@1.0.1/build/grids-responsive-min.css"
        />
        <link rel="stylesheet" href="/all.css" />
      </head>
      <body>
        <BodyClass />
        {children}

      </body>
    </html>
  );
}
