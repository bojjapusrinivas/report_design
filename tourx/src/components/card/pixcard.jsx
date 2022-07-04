import React from 'react'
import {IoStar } from "react-icons/io5";
import {IoLocation } from "react-icons/io5";
import './pixcard.css';

 function pixcard(props) {
    return (
        <>
        <div className="card w-100 shadow bg-white mb-5">
            <div className="pix-card-img">
                <img src={props.Placeimg} className="card-img-top" alt={props.Placetitle}/>
            </div>
        <div className="card-body">
                      <div class="package-details">
                            <div  class="pix-package-info d-flex justify-content-between">
                                <h5><span>{props.Price}</span>/Per Person</h5>
                                <h5><i class="flaticon-calendar"></i>{props.Days}</h5>
                            </div>
                            <div className="pxi-cardtitle">
                            <h3><span><IoLocation/></span><a href="/package-details">{props.Placetitle}</a></h3>
                            </div>

                            <div class="pxi-package-rating">
                            <span><IoStar/></span>{props.Rank}
                            </div>
                    </div>
         </div>
        </div>
       </>
    )
}
export default pixcard