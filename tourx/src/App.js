import './App.css';
import { Routes,   Swithch,   Link } from "react-router-dom";
import './components/topstrip/topstrip_styles.css';
import Header from './components/header/header';
import TopStrip from './components/topstrip/topstrip';
import Home from './components/home';
import About from './components/About_Page/about'
import Destinations from './components/Destinations_Page/Destinations'
import Package from './components/Package/Package'
import HolidayIdeas from './components/HolidayIdeas_Page/Holidayideas'
import PlacestoStay from './components/Placetostay_Page/Placetostay'
import WeekendGetaways from './components/WeekendGetaways/weekendgetaways'

  

function App() {
  return (
    <div className="App">

      
<TopStrip/>
      <Header/>   
      <Swithch>
        <Route path="/" component = {Home} />
        <Route path="/about" component = {About} />
        <Route path="/destinations" component = {Destinations} />
        <Route path="/package" component = {Package} />
        <Route path="/placestoStay" component = {PlacestoStay} />
        <Route path="/holidayIdeas" component = {HolidayIdeas} />
        <Route path="/weekendGetaways" component = {WeekendGetaways} />
      </Swithch>
     
    </div>
  );
}

export default App;
