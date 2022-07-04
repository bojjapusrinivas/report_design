import React from 'react';
import './pagetitle.css';
 function pagetitle(props) {
    return (
        <>
        <div className="container">
            <div className="row">
        <div className="col-12 mx-auto  my-5 py-3">
        <div className = "pxi-page-title text-center mx-auto">
            <h5> {props.tagtext}</h5>
            <h2> {props.titletext}</h2>
        </div>
        </div>
        </div>
        </div>
        </>
    )
}


export default pagetitle
