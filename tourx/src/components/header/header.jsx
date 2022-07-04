import React from "react";
import { VscSearch } from "react-icons/vsc";
import { VscAccount } from "react-icons/vsc";
import Logo from '../../images/logo.png';



const Header = () =>{

    return(
        <>
            <div className=" shadow-sm border-bottom">
                <div className="container">
                <div className="d-flex flex-column flex-md-row align-items-center justify-content-between py-3   bg-white ">
                    <img src={Logo} alt="TourX"/>

                    <nav className="my-2 my-md-0 mr-md-3">
                        <a className="p-2 text-dark" href="/home">Home</a>
                        <a className="p-2 text-dark" href="/home">About Us</a>
                        <a className="p-2 text-dark" href="/home">Destinations</a>
                        <a className="p-2 text-dark" href="/home">Tour Package</a>
                        <a className="p-2 text-dark" href="/home">Holiday Ideas</a>
                        <a className="p-2 text-dark" href="/home">Places to Stay</a>
                        <a className="p-2 text-dark" href="/home">Weekend Getaways</a>
                    </nav>
                        <div ClassName="text-end">
                            <a class="btn " href="/home"><VscSearch/></a>
                            <a class="btn " href="/home"><VscAccount/></a>
                        </div>
                    </div>
                </div>
            </div>
        </>
        
    )

}
  
export default Header;
  