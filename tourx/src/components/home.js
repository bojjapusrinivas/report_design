import React from 'react';
import Carousel from './carousel/carousel';
import Findmore from './findmore/FindMore';
import Pagetitle from './pagetitle/pagetitle';
import Bestpackage from './bestpackage/bestpackage';
import DestinationArea from './destinationsArea/DestinationsArea'


const Home = () =>{
    return(
        <>
         <Carousel></Carousel>
         <Findmore></Findmore>
         <Pagetitle titletext="Select Your best Package For Your Travel"  tagtext="Choose Your Package"></Pagetitle>
         <Bestpackage></Bestpackage>
         <Pagetitle titletext="Select Your best Package For Your Travel"  tagtext="Choose Your Package"></Pagetitle>
         <DestinationArea  destionPic="https://pixel4inch.github.io/stockimages/tourx/Best_Package/spain/Best_Package_span_1.png"></DestinationArea>
         
        </>
    )
}

export default Home