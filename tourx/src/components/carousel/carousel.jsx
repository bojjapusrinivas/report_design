import React from 'react';
import Slide1 from '../../images/home/slide/slide_1.png';
import Slide2 from '../../images/home/slide/slide_2.png';
import Slide3 from '../../images/home/slide/slide_3.png';
import "./carousel.css";
import CarouselItems from "./carousel-items";



const Carousel = () =>{
    return(
        <>
        <div id="carouselExampleControls" className="carousel slide carousel-fade" data-bs-ride="carousel">
            <div className="carousel-inner">
               <div className="carousel-item active">
                    <CarouselItems slideimg={Slide1} message = "Amazing Tour In Madagascar" tag="7 Days, 8 Night Tour"> </CarouselItems>
               </div>

               <div className="carousel-item">
                     <CarouselItems slideimg={Slide2} message = "Amazing Tour In Hampshire" tag="7 Days, 8 Night Tour"> </CarouselItems>
               </div>
               
               <div className="carousel-item">
                    <CarouselItems slideimg={Slide3} message = "Amazing Tour In Indonesia" tag="7 Days, 8 Night Tour"> </CarouselItems>
               </div>

            </div>
            <button className="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                <span className="carousel-control-prev-icon" aria-hidden="true"></span>
                <span className="visually-hidden">Previous</span>
            </button>
            <button className="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                <span className="carousel-control-next-icon" aria-hidden="true"></span>
                <span className="visually-hidden">Next</span>
            </button>
        </div>

        </>
    )   
}

export default Carousel