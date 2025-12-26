import "./App.css";
import NameTittle from "../Features/NameTittle/NameTittle";
import Motto from "../Features/Motto/Motto";
import SocialIcons from "../Features/SocialIcons/SocialIcons";

function App() {
  return (
    <>
      <div className="page">
        <NameTittle />
        <Motto />
        <SocialIcons />
      </div>
    </>
  );
}

export default App;
