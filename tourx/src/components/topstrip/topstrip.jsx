import React from "react";
import { IoMailSharp } from "react-icons/io5";
import {IoCallSharp } from "react-icons/io5";
import {IoLogoInstagram } from "react-icons/io5";
import {IoLogoFacebook } from "react-icons/io5";
import {IoLogoTwitter } from "react-icons/io5";
import {IoLogoWhatsapp} from "react-icons/io5";


const  TopStrip = () => {
    return(
        
            <div className="w-100  pxi-top-strip">
                <div className="container">
                        <div className="row">
                            <div className="col-lg-5 col-md-5 pxi-contact-row d-none d-lg-block d-xl-block d-xxl-block">
                                <div className="pxi-topbar-contact">
                                            <span><IoCallSharp/> <a href="tel:+17632275032">+1 763-227-5032</a></span>
                                            <span><IoMailSharp/> <a href="mailto:info@example.com">info@example.com</a></span>
                                 </div>
                            </div>
                            <div className="col-lg-4 col-md-6 col-sm-6 col-xs-6 col-6 ">
                                <div className="pxi-topbar-social">
                                    <ul className="list-type-none d-flex justify-content-center">
                                        <li><a href="/"><IoLogoInstagram/></a></li>
                                        <li><a href="/"><IoLogoFacebook/></a></li>
                                        <li><a href="/"><IoLogoTwitter/></a></li>
                                        <li><a href="/"><IoLogoWhatsapp/></a></li>
                                    </ul>
                                </div>
                            </div> 
                            <div className="col-lg-3 col-md-6 col-sm-6 col-xs-6 col-6 text-end pxi-laungage">
                                    <select>
                                        <option value="0">ENG</option>
                                        <option value="1">BAN</option>
                                        <option value="2">FSP</option>
                                        <option value="3">CHI</option>
                                    </select>
                            </div>
                        </div>
                </div>
            </div>
        
   )
}

export default TopStrip
