import "./App.css";
import NameTittle from "../NameTittle/NameTittle";
import Motto from "../Motto/Motto";
import SocialIcons from "../SocialIcons/SocialIcons";

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
