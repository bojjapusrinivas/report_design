
import React from 'react';
import "./DestinationsArea.css"
import OwlCarousel from 'react-owl-carousel';
import 'owl.carousel/dist/assets/owl.carousel.css';
import 'owl.carousel/dist/assets/owl.theme.default.css';
import Packagecard from '../card/pixcard';
import Dpack from '../database/Destinationdatabase'


const catfilter = Dpack.filter( c  => c.category === 2 );

function dpackcard(val,index){
    return(
      <div className="w-100">
      <Packagecard 
      Placeimg ={val.placeimg}
      Price={val.price}
     
      Placetitle={val.placetitle}
      Rank={val.rank}
      />
      </div>
    )
  
  }



const options = {
    margin:10,
    responsiveClass: true,
    nav: true,
    autoplay: false,
    navText: ["Prev", "Next"],
    smartSpeed: 1000,
    responsive: {
        0: {
            items: 1,
        },
        400: {
            items: 1,
        },
        600: {
            items: 2,
        },
        700: {
            items: 3,
        },
        1000: {
            items: 3,
        }
    },
  };


function DestinationsArea(props) {
    return (
        <>
        <div className="container">
            <div id="destinationsarea">
                <div className = "row">

                    <div className = "col-xxl-3 col-lg-4 col-sm-100 position-relatived">
                        <div className="card">
                            <div className="pakage-overlay">
                                <strong>Spain</strong>
                            </div>
                            <img src={props.destionPic} alt="desionation-img" className ="img-fluid"/>

                        </div>
                    </div>

                    <div className = "col-xxl-9 col-lg-4 col-sm-100">
                        <div className="carousel">

                        <OwlCarousel className="slider-items owl-carousel" {...options}>


                        {catfilter.map(dpackcard)}

                            
                       </OwlCarousel>
                        </div>
                </div>

                </div>      
             </div>
        </div>
        </>
    )
}

export default DestinationsArea