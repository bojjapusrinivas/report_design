import React from 'react'
import Packagecard from '../card/pixcard';
import Packagecarddata from '../database/packagedataprimimum';

function packegcard(val,index){

  return(
    <div className="col-xl-4 col-lg-4 col-md-2 col-xs-1">
    <Packagecard 
    Placeimg ={val.placeimg}
    Price={val.price}
    Days={val.days}
    Placetitle={val.placetitle}
    Rank={val.rank}
    />
    </div>
  )

}

function bestpackage() {
    return (
        <>
       <div className="container">
            <div className="row">
                 {Packagecarddata.map(packegcard)}
            </div>
         </div>
        </>
    )
}
export default bestpackage;