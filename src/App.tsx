import './App.css'
import NameTittle from './components/NameTittle/NameTittle'
import Motto from './components/Motto/Motto'
import SocialIcons from './components/SocialIcons/SocialIcons'

function App() {
  return (
    <>
      <div className="page">
        <NameTittle />
        <Motto />
        <SocialIcons />
      </div>
    </>
  )
}

export default App
