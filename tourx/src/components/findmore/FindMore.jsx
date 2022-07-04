import React from "react";
import './findmore.css';
import { RiSearchEyeLine } from "react-icons/ri";

const FindMore = () => {
    return(
        <>
            <div className="container">

                <div className="col-xl-8 col-lg-10 col-md-100 mx-auto">
                    <div className="pxi-findmore">

                         <form>
                        <div className="row">
                            <div className="col-lg-3 mb-2 px-3">
                                <div className="pxi-custom-input">
                                    <input type="text" name="whereto" placeholder="Where To..."/>
                                </div>
                            </div>

                            <div className="col-lg-3 px-3 mb-2">
                                <div className="pxi-calendar-input">
                                  
                                  
                                        <input type="date" className="input-field check-in pxi-calender" value="11/24/2021"/>
                                   
                                   
                                </div>
                            </div>

                            <div className="col-lg-3 mb-2 px-3">
                                <div className="pxi-custom-select ">
                                    <select>
                                    <option value="0">Travel Type</option>
                                    <option value="1">City Tours</option>
                                    <option value="2">Vacation Tours</option>
                                    <option value="3">Couple Tours </option>
                                    <option value="4">Adventure Tours</option>
                                    <option value="5">Group Tours</option>
                                    </select>
                                </div>
                            </div>
                            <div className="col-lg-3 mb-2 px-3">
                                <div className="pxi-find-btn">
                                    <a className="btn-second" href="/">
                                        <RiSearchEyeLine className='find_icon'/> Find now</a>
                                </div>
                            </div>
                        </div>
                        </form>



                    </div>
                </div>
                

            </div>
        </>
    )
}

export default FindMore