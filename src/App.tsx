import './App.css'
import NameTittle from './components/NameTittle'
import SocialIcons from './components/SocialIcons'

function App() {
  return (
    <>
      <div className="page">
        <NameTittle />
        <h3>I like to build stuff.</h3>
        <SocialIcons />
      </div>
    </>
  )
}

export default App
