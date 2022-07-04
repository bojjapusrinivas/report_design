
<style>
input::-webkit-input-placeholder,
 textarea::-webkit-input-placeholder
 {
    color: #000 !important;
}

 input::-webkit-input-placeholder,
 textarea::-webkit-input-placeholder

{
    color: #ccc !important;
}
        .short_text{
            display: none;
        }

        .long_text{
            display: block;
        }

        .collapse_btn{
            width: 18px;
            height: 18px;
            position: relative;
            padding: 0px;
        }

        .collapse_btn.collapsed:before
        {
            content: '\f067';
        position: absolute;
        width: 18px;
        height: 18px;
        font-family: FontAwesome;
        color: #169FE6;
        left: 0px;
        font-size: 10px;
        top: 2px;
        z-index: 999;
        font-weight: 400;
        text-align: center;
        }

        .collapse_btn:before
        {
        content: '\f068';
        position: absolute;
        width: 18px;
        height: 18px;
        font-family: FontAwesome;
        color: #169FE6;
        left: 0px;
        font-size: 10px;
        top: -6px;
        z-index: 999;
        font-weight: 400;
        text-align: center;
        }


        .tooltippopup[title]:hover:after {
        content: attr(title);
        position: absolute;
        display: block;
        min-width: 105px;
        line-height: 17px;
        letter-spacing: normal;
        padding: 3px;
        font-size: 11px;
        min-height: auto;
        color: #000;
        bottom: 24px;
        background: #fff;
        /* font-family: 'Open Sans'; */
        border: rgba(0, 0, 0, 0.2) solid 1px;
        right: -23px;
        text-align: center;
}


        @media only screen and (max-width: 959px){

            .short_text{
            display:block;
        }

        .long_text{
            display: none;
        }
		


        }

    </style>


<div class="w-100">
    <div class="row mb-0 mx-3">
        <div class="w-100 text-left mb-2 ">
            <h3 class="text-primary text_orange font-weight-bold m-0 line-height-normal mt-1 text-center mb-2">
                COMPETITIVE METRICS</h3>

            <div class="w-lg-100 w-xl-100  d-flex flex-wrap justify-content-around">
                <div class="w-lg-32 w-xl-32 w-md-45 w-sm-100  d-flex flex-column  my-2  p-1">
                    <div class="w-100 h-100 ">

                        <div class="bg-white cards m-0 p-1 font-weight-bold  ">
                            <div class="d-flex w-100 mb-0 align-items-start justify-content-between border-bottom" style="min-height:35px;">
                                <h4 class="w-95 d-block mb-0 ml-2 mr-3" style="line-height: normal;">
                                    ABB Ltd.</h4>
                                <a class="p-1 rounded-0 collapse_btn collapsed" data-toggle="collapse" href="#collapseExampleCP-100034" role="button" aria-expanded="false" aria-controls="collapseExampleCP-100034">

                                </a>
                            </div>
                            <div class="w-100 ">
                                <div class="collapse border-0   flex-wrap" id="collapseExampleCP-100034" style="background: #f3f3f3;">
                                    <div class="border-top py-2 px-1 d-flex flex-xl-wrap flex-lg-wrap  flex-md-nowrap flex-sm-nowrap">

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-100034" id="RtypeCP-100034" value="Dominant" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Dominant
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">D <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Dominant"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-100034" id="RtypeCP-100034" value="Strong" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Strong
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">S <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Strong"></i></a> </span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25   d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-100034" id="RtypeCP-100034" value="Niche" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Niche
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">N <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Niche"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 w- d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-100034" id="RtypeCP-100034" value="Trivial" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Trivial
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">T <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Trivial"></i></a></span>
                                        </div>


                                    </div>
                                    <div class="d-flex ml-2">
                                        Rank:&nbsp;<input type="text" maxlength="4" name="RankCP-100034" id="RankCP-100034" value="" onkeypress="return isNumberKey(event,this)" size="20" tabindex="3" class="textbox_border w-50 mx-1 p-1 simulator-input-text price2021 colorCarsCP-100034" placeholder="##.#"> &nbsp;&nbsp;<button onclick="AddComp_metris('CP-100034','MCP15512')" style="background: none;border: none; color: #169FE6; font-weight: bold;">Save</button>
                                    </div>
                                </div>

                            </div>



                        </div>

                    </div>

                </div>
                <div class="w-lg-32 w-xl-32 w-md-45 w-sm-100  d-flex flex-column  my-2  p-1">
                    <div class="w-100 h-100 ">

                        <div class="bg-white cards m-0 p-1 font-weight-bold  ">
                            <div class="d-flex w-100 mb-0 align-items-start justify-content-between border-bottom" style="min-height:35px;">
                                <h4 class="w-95 d-block mb-0 ml-2 mr-3" style="line-height: normal;">
                                    Advanced Microgrid Solutions (AMS)</h4>
                                <a class="p-1 rounded-0 collapse_btn collapsed" data-toggle="collapse" href="#collapseExampleCP-400223" role="button" aria-expanded="false" aria-controls="collapseExampleCP-400223">

                                </a>
                            </div>
                            <div class="w-100 ">
                                <div class="collapse border-0   flex-wrap" id="collapseExampleCP-400223" style="background: #f3f3f3;">
                                    <div class="border-top py-2 px-1 d-flex flex-xl-wrap flex-lg-wrap  flex-md-nowrap flex-sm-nowrap">

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-400223" id="RtypeCP-400223" value="Dominant" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Dominant
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">D <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Dominant"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-400223" id="RtypeCP-400223" value="Strong" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Strong
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">S <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Strong"></i></a> </span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25   d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-400223" id="RtypeCP-400223" value="Niche" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Niche
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">N <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Niche"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 w- d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-400223" id="RtypeCP-400223" value="Trivial" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Trivial
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">T <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Trivial"></i></a></span>
                                        </div>


                                    </div>
                                    <div class="d-flex ml-2">
                                        Rank:&nbsp;<input type="text" maxlength="4" name="RankCP-400223" id="RankCP-400223" value="" onkeypress="return isNumberKey(event,this)" size="20" tabindex="3" class="textbox_border w-50 mx-1 p-1 simulator-input-text price2021 colorCarsCP-400223" placeholder="##.#"> &nbsp;&nbsp;<button onclick="AddComp_metris('CP-400223','MCP15512')" style="background: none;border: none; color: #169FE6; font-weight: bold;">Save</button>
                                    </div>
                                </div>

                            </div>



                        </div>

                    </div>

                </div>
                <div class="w-lg-32 w-xl-32 w-md-45 w-sm-100  d-flex flex-column  my-2  p-1">
                    <div class="w-100 h-100 ">

                        <div class="bg-white cards m-0 p-1 font-weight-bold  ">
                            <div class="d-flex w-100 mb-0 align-items-start justify-content-between border-bottom" style="min-height:35px;">
                                <h4 class="w-95 d-block mb-0 ml-2 mr-3" style="line-height: normal;">
                                    AGL Energy Ltd.</h4>
                                <a class="p-1 rounded-0 collapse_btn collapsed" data-toggle="collapse" href="#collapseExampleCP-456461" role="button" aria-expanded="false" aria-controls="collapseExampleCP-456461">

                                </a>
                            </div>
                            <div class="w-100 ">
                                <div class="collapse border-0   flex-wrap" id="collapseExampleCP-456461" style="background: #f3f3f3;">
                                    <div class="border-top py-2 px-1 d-flex flex-xl-wrap flex-lg-wrap  flex-md-nowrap flex-sm-nowrap">

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-456461" id="RtypeCP-456461" value="Dominant" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Dominant
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">D <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Dominant"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-456461" id="RtypeCP-456461" value="Strong" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Strong
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">S <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Strong"></i></a> </span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25   d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-456461" id="RtypeCP-456461" value="Niche" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Niche
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">N <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Niche"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 w- d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-456461" id="RtypeCP-456461" value="Trivial" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Trivial
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">T <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Trivial"></i></a></span>
                                        </div>


                                    </div>
                                    <div class="d-flex ml-2">
                                        Rank:&nbsp;<input type="text" maxlength="4" name="RankCP-456461" id="RankCP-456461" value="" onkeypress="return isNumberKey(event,this)" size="20" tabindex="3" class="textbox_border w-50 mx-1 p-1 simulator-input-text price2021 colorCarsCP-456461" placeholder="##.#"> &nbsp;&nbsp;<button onclick="AddComp_metris('CP-456461','MCP15512')" style="background: none;border: none; color: #169FE6; font-weight: bold;">Save</button>
                                    </div>
                                </div>

                            </div>



                        </div>

                    </div>

                </div>
                <div class="w-lg-32 w-xl-32 w-md-45 w-sm-100  d-flex flex-column  my-2  p-1">
                    <div class="w-100 h-100 ">

                        <div class="bg-white cards m-0 p-1 font-weight-bold  ">
                            <div class="d-flex w-100 mb-0 align-items-start justify-content-between border-bottom" style="min-height:35px;">
                                <h4 class="w-95 d-block mb-0 ml-2 mr-3" style="line-height: normal;">
                                    AutoGrid Systems, Inc.</h4>
                                <a class="p-1 rounded-0 collapse_btn collapsed" data-toggle="collapse" href="#collapseExampleCP-112592" role="button" aria-expanded="false" aria-controls="collapseExampleCP-112592">

                                </a>
                            </div>
                            <div class="w-100 ">
                                <div class="collapse border-0   flex-wrap" id="collapseExampleCP-112592" style="background: #f3f3f3;">
                                    <div class="border-top py-2 px-1 d-flex flex-xl-wrap flex-lg-wrap  flex-md-nowrap flex-sm-nowrap">

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-112592" id="RtypeCP-112592" value="Dominant" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Dominant
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">D <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Dominant"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-112592" id="RtypeCP-112592" value="Strong" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Strong
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">S <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Strong"></i></a> </span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25   d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-112592" id="RtypeCP-112592" value="Niche" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Niche
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">N <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Niche"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 w- d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-112592" id="RtypeCP-112592" value="Trivial" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Trivial
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">T <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Trivial"></i></a></span>
                                        </div>


                                    </div>
                                    <div class="d-flex ml-2">
                                        Rank:&nbsp;<input type="text" maxlength="4" name="RankCP-112592" id="RankCP-112592" value="" onkeypress="return isNumberKey(event,this)" size="20" tabindex="3" class="textbox_border w-50 mx-1 p-1 simulator-input-text price2021 colorCarsCP-112592" placeholder="##.#"> &nbsp;&nbsp;<button onclick="AddComp_metris('CP-112592','MCP15512')" style="background: none;border: none; color: #169FE6; font-weight: bold;">Save</button>
                                    </div>
                                </div>

                            </div>



                        </div>

                    </div>

                </div>
                <div class="w-lg-32 w-xl-32 w-md-45 w-sm-100  d-flex flex-column  my-2  p-1">
                    <div class="w-100 h-100 ">

                        <div class="bg-white cards m-0 p-1 font-weight-bold  ">
                            <div class="d-flex w-100 mb-0 align-items-start justify-content-between border-bottom" style="min-height:35px;">
                                <h4 class="w-95 d-block mb-0 ml-2 mr-3" style="line-height: normal;">
                                    Blue Pillar, Inc.</h4>
                                <a class="p-1 rounded-0 collapse_btn collapsed" data-toggle="collapse" href="#collapseExampleCP-401347" role="button" aria-expanded="false" aria-controls="collapseExampleCP-401347">

                                </a>
                            </div>
                            <div class="w-100 ">
                                <div class="collapse border-0   flex-wrap" id="collapseExampleCP-401347" style="background: #f3f3f3;">
                                    <div class="border-top py-2 px-1 d-flex flex-xl-wrap flex-lg-wrap  flex-md-nowrap flex-sm-nowrap">

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-401347" id="RtypeCP-401347" value="Dominant" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Dominant
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">D <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Dominant"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-401347" id="RtypeCP-401347" value="Strong" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Strong
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">S <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Strong"></i></a> </span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25   d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-401347" id="RtypeCP-401347" value="Niche" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Niche
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">N <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Niche"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 w- d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-401347" id="RtypeCP-401347" value="Trivial" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Trivial
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">T <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Trivial"></i></a></span>
                                        </div>


                                    </div>
                                    <div class="d-flex ml-2">
                                        Rank:&nbsp;<input type="text" maxlength="4" name="RankCP-401347" id="RankCP-401347" value="" onkeypress="return isNumberKey(event,this)" size="20" tabindex="3" class="textbox_border w-50 mx-1 p-1 simulator-input-text price2021 colorCarsCP-401347" placeholder="##.#"> &nbsp;&nbsp;<button onclick="AddComp_metris('CP-401347','MCP15512')" style="background: none;border: none; color: #169FE6; font-weight: bold;">Save</button>
                                    </div>
                                </div>

                            </div>



                        </div>

                    </div>

                </div>
                <div class="w-lg-32 w-xl-32 w-md-45 w-sm-100  d-flex flex-column  my-2  p-1">
                    <div class="w-100 h-100 ">

                        <div class="bg-white cards m-0 p-1 font-weight-bold  ">
                            <div class="d-flex w-100 mb-0 align-items-start justify-content-between border-bottom" style="min-height:35px;">
                                <h4 class="w-95 d-block mb-0 ml-2 mr-3" style="line-height: normal;">
                                    Cisco Systems, Inc.</h4>
                                <a class="p-1 rounded-0 collapse_btn collapsed" data-toggle="collapse" href="#collapseExampleCP-100004" role="button" aria-expanded="false" aria-controls="collapseExampleCP-100004">

                                </a>
                            </div>
                            <div class="w-100 ">
                                <div class="collapse border-0   flex-wrap" id="collapseExampleCP-100004" style="background: #f3f3f3;">
                                    <div class="border-top py-2 px-1 d-flex flex-xl-wrap flex-lg-wrap  flex-md-nowrap flex-sm-nowrap">

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-100004" id="RtypeCP-100004" value="Dominant" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Dominant
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">D <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Dominant"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-100004" id="RtypeCP-100004" value="Strong" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Strong
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">S <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Strong"></i></a> </span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25   d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-100004" id="RtypeCP-100004" value="Niche" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Niche
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">N <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Niche"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 w- d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-100004" id="RtypeCP-100004" value="Trivial" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Trivial
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">T <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Trivial"></i></a></span>
                                        </div>


                                    </div>
                                    <div class="d-flex ml-2">
                                        Rank:&nbsp;<input type="text" maxlength="4" name="RankCP-100004" id="RankCP-100004" value="" onkeypress="return isNumberKey(event,this)" size="20" tabindex="3" class="textbox_border w-50 mx-1 p-1 simulator-input-text price2021 colorCarsCP-100004" placeholder="##.#"> &nbsp;&nbsp;<button onclick="AddComp_metris('CP-100004','MCP15512')" style="background: none;border: none; color: #169FE6; font-weight: bold;">Save</button>
                                    </div>
                                </div>

                            </div>



                        </div>

                    </div>

                </div>
                <div class="w-lg-32 w-xl-32 w-md-45 w-sm-100  d-flex flex-column  my-2  p-1">
                    <div class="w-100 h-100 ">

                        <div class="bg-white cards m-0 p-1 font-weight-bold  ">
                            <div class="d-flex w-100 mb-0 align-items-start justify-content-between border-bottom" style="min-height:35px;">
                                <h4 class="w-95 d-block mb-0 ml-2 mr-3" style="line-height: normal;">
                                    E.ON SE</h4>
                                <a class="p-1 rounded-0 collapse_btn collapsed" data-toggle="collapse" href="#collapseExampleCP-101342" role="button" aria-expanded="false" aria-controls="collapseExampleCP-101342">

                                </a>
                            </div>
                            <div class="w-100 ">
                                <div class="collapse border-0   flex-wrap" id="collapseExampleCP-101342" style="background: #f3f3f3;">
                                    <div class="border-top py-2 px-1 d-flex flex-xl-wrap flex-lg-wrap  flex-md-nowrap flex-sm-nowrap">

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-101342" id="RtypeCP-101342" value="Dominant" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Dominant
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">D <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Dominant"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-101342" id="RtypeCP-101342" value="Strong" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Strong
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">S <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Strong"></i></a> </span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25   d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-101342" id="RtypeCP-101342" value="Niche" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Niche
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">N <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Niche"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 w- d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-101342" id="RtypeCP-101342" value="Trivial" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Trivial
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">T <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Trivial"></i></a></span>
                                        </div>


                                    </div>
                                    <div class="d-flex ml-2">
                                        Rank:&nbsp;<input type="text" maxlength="4" name="RankCP-101342" id="RankCP-101342" value="" onkeypress="return isNumberKey(event,this)" size="20" tabindex="3" class="textbox_border w-50 mx-1 p-1 simulator-input-text price2021 colorCarsCP-101342" placeholder="##.#"> &nbsp;&nbsp;<button onclick="AddComp_metris('CP-101342','MCP15512')" style="background: none;border: none; color: #169FE6; font-weight: bold;">Save</button>
                                    </div>
                                </div>

                            </div>



                        </div>

                    </div>

                </div>
                <div class="w-lg-32 w-xl-32 w-md-45 w-sm-100  d-flex flex-column  my-2  p-1">
                    <div class="w-100 h-100 ">

                        <div class="bg-white cards m-0 p-1 font-weight-bold  ">
                            <div class="d-flex w-100 mb-0 align-items-start justify-content-between border-bottom" style="min-height:35px;">
                                <h4 class="w-95 d-block mb-0 ml-2 mr-3" style="line-height: normal;">
                                    ENBALA Power Networks, Inc.</h4>
                                <a class="p-1 rounded-0 collapse_btn collapsed" data-toggle="collapse" href="#collapseExampleCP-116098" role="button" aria-expanded="false" aria-controls="collapseExampleCP-116098">

                                </a>
                            </div>
                            <div class="w-100 ">
                                <div class="collapse border-0   flex-wrap" id="collapseExampleCP-116098" style="background: #f3f3f3;">
                                    <div class="border-top py-2 px-1 d-flex flex-xl-wrap flex-lg-wrap  flex-md-nowrap flex-sm-nowrap">

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-116098" id="RtypeCP-116098" value="Dominant" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Dominant
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">D <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Dominant"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-116098" id="RtypeCP-116098" value="Strong" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Strong
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">S <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Strong"></i></a> </span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25   d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-116098" id="RtypeCP-116098" value="Niche" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Niche
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">N <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Niche"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 w- d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-116098" id="RtypeCP-116098" value="Trivial" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Trivial
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">T <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Trivial"></i></a></span>
                                        </div>


                                    </div>
                                    <div class="d-flex ml-2">
                                        Rank:&nbsp;<input type="text" maxlength="4" name="RankCP-116098" id="RankCP-116098" value="" onkeypress="return isNumberKey(event,this)" size="20" tabindex="3" class="textbox_border w-50 mx-1 p-1 simulator-input-text price2021 colorCarsCP-116098" placeholder="##.#"> &nbsp;&nbsp;<button onclick="AddComp_metris('CP-116098','MCP15512')" style="background: none;border: none; color: #169FE6; font-weight: bold;">Save</button>
                                    </div>
                                </div>

                            </div>



                        </div>

                    </div>

                </div>
                <div class="w-lg-32 w-xl-32 w-md-45 w-sm-100  d-flex flex-column  my-2  p-1">
                    <div class="w-100 h-100 ">

                        <div class="bg-white cards m-0 p-1 font-weight-bold  ">
                            <div class="d-flex w-100 mb-0 align-items-start justify-content-between border-bottom" style="min-height:35px;">
                                <h4 class="w-95 d-block mb-0 ml-2 mr-3" style="line-height: normal;">
                                    EnBW Energie Baden-Wuerttemberg AG</h4>
                                <a class="p-1 rounded-0 collapse_btn collapsed" data-toggle="collapse" href="#collapseExampleCP-116099" role="button" aria-expanded="false" aria-controls="collapseExampleCP-116099">

                                </a>
                            </div>
                            <div class="w-100 ">
                                <div class="collapse border-0   flex-wrap" id="collapseExampleCP-116099" style="background: #f3f3f3;">
                                    <div class="border-top py-2 px-1 d-flex flex-xl-wrap flex-lg-wrap  flex-md-nowrap flex-sm-nowrap">

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-116099" id="RtypeCP-116099" value="Dominant" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Dominant
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">D <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Dominant"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-116099" id="RtypeCP-116099" value="Strong" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Strong
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">S <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Strong"></i></a> </span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25   d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-116099" id="RtypeCP-116099" value="Niche" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Niche
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">N <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Niche"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 w- d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-116099" id="RtypeCP-116099" value="Trivial" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Trivial
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">T <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Trivial"></i></a></span>
                                        </div>


                                    </div>
                                    <div class="d-flex ml-2">
                                        Rank:&nbsp;<input type="text" maxlength="4" name="RankCP-116099" id="RankCP-116099" value="" onkeypress="return isNumberKey(event,this)" size="20" tabindex="3" class="textbox_border w-50 mx-1 p-1 simulator-input-text price2021 colorCarsCP-116099" placeholder="##.#"> &nbsp;&nbsp;<button onclick="AddComp_metris('CP-116099','MCP15512')" style="background: none;border: none; color: #169FE6; font-weight: bold;">Save</button>
                                    </div>
                                </div>

                            </div>



                        </div>

                    </div>

                </div>
                <div class="w-lg-32 w-xl-32 w-md-45 w-sm-100  d-flex flex-column  my-2  p-1">
                    <div class="w-100 h-100 ">

                        <div class="bg-white cards m-0 p-1 font-weight-bold  ">
                            <div class="d-flex w-100 mb-0 align-items-start justify-content-between border-bottom" style="min-height:35px;">
                                <h4 class="w-95 d-block mb-0 ml-2 mr-3" style="line-height: normal;">
                                    Enel X North America, Inc.</h4>
                                <a class="p-1 rounded-0 collapse_btn collapsed" data-toggle="collapse" href="#collapseExampleCP-1119903" role="button" aria-expanded="false" aria-controls="collapseExampleCP-1119903">

                                </a>
                            </div>
                            <div class="w-100 ">
                                <div class="collapse border-0   flex-wrap" id="collapseExampleCP-1119903" style="background: #f3f3f3;">
                                    <div class="border-top py-2 px-1 d-flex flex-xl-wrap flex-lg-wrap  flex-md-nowrap flex-sm-nowrap">

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-1119903" id="RtypeCP-1119903" value="Dominant" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Dominant
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">D <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Dominant"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-1119903" id="RtypeCP-1119903" value="Strong" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Strong
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">S <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Strong"></i></a> </span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25   d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-1119903" id="RtypeCP-1119903" value="Niche" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Niche
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">N <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Niche"></i></a></span>
                                        </div>

                                        <div class=" w-lg-50 w-xl-50 w-md-25 w-sm-25 w- d-flex align-items-center position-relative">
                                            <input type="radio" name="RtypeCP-1119903" id="RtypeCP-1119903" value="Trivial" class="p-0 mr-1">
                                            <span class="long_text" style=" padding-top: 3px;">Trivial
                                            </span>
                                            <span class="short_text" style=" padding-top: 3px;">T <a herf="javascript:void(0)" class="text-primary" style="font-size:12px;margin-left:3px;"><i class="fa fa-info-circle  i5 message tooltippopup" title="Trivial"></i></a></span>
                                        </div>


                                    </div>
                                    <div class="d-flex ml-2">
                                        Rank:&nbsp;<input type="text" maxlength="4" name="RankCP-1119903" id="RankCP-1119903" value="" onkeypress="return isNumberKey(event,this)" size="20" tabindex="3" class="textbox_border w-50 mx-1 p-1 simulator-input-text price2021 colorCarsCP-1119903" placeholder="##.#"> &nbsp;&nbsp;<button onclick="AddComp_metris('CP-1119903','MCP15512')" style="background: none;border: none; color: #169FE6; font-weight: bold;">Save</button>
                                    </div>
                                </div>

                            </div>



                        </div>

                    </div>

                </div>

            </div>
        </div>



        <div class="w-100 text-left pt-2  mt-3 border-top  ">
            <h4 class="font-weight-bold  text-center my-0 "> Sign-in with email to View Deeper Validated
                Engagement Details - </h4>
            <div class="w-100">

                <span class="d-flex flex-md-row flex-sm-row flex-wrap  justify-content-center mt-2">

                    <button class=" rounded-0 p-1  mx-2 border-0  b " type="button" id="highlights_btn">
                        Companies
                    </button>

                    <button class=" rounded-0 p-1    mx-2 border-0" type="button" id="preview_btn">
                        Executives
                    </button>
                    <button class=" p-2 rounded-0      mx-2 border-0" type="button" id="differentiators_btn">
                        Research Modules
                    </button>
                    <button class=" rounded-0 p-2     mx-2 border-0" type="button" id="expert_btn">
                        Trend Data
                    </button>
                    <button class=" rounded-0 p-2    mx-2 border-0" type="button" id="expert_btn">
                        News
                    </button>

                </span>


            </div>
        </div>
    </div>
</div>		
						
							   
