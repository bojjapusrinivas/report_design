import React from 'react';

import "./carousel.css";

const CarouselItems = (props) =>{
    return(
        <>
         <div className="pxi-carousel-content" >
                 <div className="pxi-overlayer"></div>

                <div  className="container">
                    <div className="pxi-crousel-text">
                        <h2>{props.message}</h2>
                        <h5>{props.tag}</h5>
                        <div class="pxi-btn from-bottom"><a href="/products">Book Now</a></div>

                    </div>
                </div>

            <img src={props.slideimg} className="d-block w-100" alt="slider_1"/>
        </div>

        </>
    )   
}

export default CarouselItems