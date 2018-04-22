<link href="/Plugins/Validate/jquery-validation-1.13.1/jquery-validation.css" rel="stylesheet">
<script src="/Plugins/Validate/jquery-validation-1.13.1/jquery.validate.min.js"></script>
<script src="/Plugins/Validate/jquery-validation-1.13.1/additional-methods.min.js"></script>

<div class="sub-nav">
    <div class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <h1 class="h1-title-d">
                    BOOKING TOUR
                </h1>
            </div>
            <!-- Sub Nav Links -->
            <nav class="navbar-collapse collapse" id="navbar-sub">
                <ul class="nav navbar-nav navbar-right sm" data-smartmenus-id="15237221460003083">
                    <li><a target="_blank" href="mailto:info@swallowtravel.com"><i class="fa fa-envelope-o"></i> <span class="hidden-md hidden-lg">Email</span></a></li>
                </ul>
            </nav>

        </div>
    </div>
</div>


<section class="regular" style="padding-top: 4rem">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                
                    <form action="" method="POST" id="bk-tour" class="form-horizontal" novalidate="novalidate">
                        <input type="hidden" name="TourId" value="70" id="TourId">
                        <h3 class="title-h1">Payment Information</h3>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Payment method:</label>
                            <div class="col-sm-9">
                                        <input type="radio" checked="" name="TypePayment" id="Radio2" value="2" class="radio-type-pay">
                                        <label class="payment-method" for="Radio2">Send email</label>
                            </div>
                        </div>


                        <?php foreach ($carts as $row ):?>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Tour:</label>
                                
                                <div class="col-sm-9">
                                    <strong><?=$row['name']?></strong>
                                </div>
                            </div>
                            
                            
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Total itinerary:</label>
                                <div class="col-sm-9">
                                    <strong id="text-total-price"><?=number_format($row['price'])?> USD</strong>
                                </div>
                            </div>
                            

                                <br>
                            <h3 class="title-h1">Guest Information</h3>
                                
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Gender<span class="required" aria-required="true">*</span></label>
                                    <div class="col-sm-2">
                                        <select name="Gender" id="Gender">
                                            <option value="Mr">Mr</option>
                                            <option value="Ms">Ms</option>
                                            <option value="Mrs">Mrs</option>
                                            <option value="Dr">Dr</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Full Name<span class="required" aria-required="true">*</span></label>
                                    <div class="col-sm-6">
                                        <input value="<?php echo isset($user->name) ? $user->name : set_value('FullName') ?>" placeholder="input Name" type="text" name="FullName" id="FullName">
                                    </div>
                                    <div style="color: red;" class="error"><?php echo form_error('FullName')?></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Tel</label>
                                    <div class="col-sm-6">
                                        <input value="<?php echo isset($user->phone) ? $user->phone : set_value('Tel') ?>" placeholder="input Tel" type="text" name="Tel" id="Tel">
                                    </div>
                                    
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Email<span class="required" aria-required="true">*</span></label>
                                    <div class="col-sm-6">
                                        <input type="text" value="<?php echo isset($user->email) ? $user->email : set_value('Email') ?>" placeholder="input Email" name="Email" id="Email">
                                    </div>
                                    <div style="color: red;"  class="error"><?php echo form_error('Email')?></div>
                                </div>
                                <!-- <div class="form-group">
                                    <label class="col-sm-3 control-label">Country<span class="required" aria-required="true">*</span></label>
                                    <div class="col-sm-9">
                                        <select id="Country" name="Country" style="width: 272px">
                                            <option value="">Select a country</option>
                                            <option value="USA">USA</option>
                                            <option value="Canada">Canada</option>
                                            <option value="Afghanistan">Afghanistan </option>
                                            <option value="Albania">Albania</option>
                                            <option value="Algeria">Algeria</option>
                                            <option value="American Samoa">American Samoa </option>
                                            <option value="Andorra">Andorra </option>
                                            <option value="Angola">Angola </option>
                                            <option value="Anguilla">Anguilla </option>
                                            <option value="Antarctica">Antarctica </option>
                                            <option value="Antigua and Barbuda">Antigua and Barbuda </option>
                                            <option value="Argentina">Argentina</option>
                                            <option value="Armenia">Armenia</option>
                                            <option value="Aruba">Aruba </option>
                                            <option value="Australia">Australia</option>
                                            <option value="Austria">Austria</option>
                                            <option value="Azerbaijan">Azerbaijan </option>
                                            <option value="Bahamas">Bahamas </option>
                                            <option value="Bahrain">Bahrain</option>
                                            <option value="Bangladesh">Bangladesh</option>
                                            <option value="Barbados">Barbados </option>
                                            <option value="Belarus">Belarus</option>
                                            <option value="Belgium">Belgium</option>
                                            <option value="Belize">Belize </option>
                                            <option value="Benin">Benin </option>
                                            <option value="Bermuda">Bermuda</option>
                                            <option value="Bhutan">Bhutan </option>
                                            <option value="Bolivia">Bolivia</option>
                                            <option value="Bosnia and Herzegovina">Bosnia and Herzegovina </option>
                                            <option value="Botswana">Botswana </option>
                                            <option value="Bouvet Island">Bouvet Island </option>
                                            <option value="Brazil">Brazil</option>
                                            <option value="British Indian Ocean Territory ">British Indian Ocean Territory </option>
                                            <option value="British Virgin Islands ">British Virgin Islands </option>
                                            <option value="Brunei">Brunei</option>
                                            <option value="Bulgaria">Bulgaria</option>
                                            <option value="Burkina Faso ">Burkina Faso </option>
                                            <option value="Burundi ">Burundi </option>
                                            <option value="Cambodia">Cambodia</option>
                                            <option value="Cameroon ">Cameroon </option>
                                            <option value="Cape Verde ">Cape Verde </option>
                                            <option value="Cayman Islands ">Cayman Islands </option>
                                            <option value="Central African Republic">Central African Republic</option>
                                            <option value="Chad">Chad</option>
                                            <option value="Chile">Chile</option>
                                            <option value="China">China</option>
                                            <option value="Chile">Christmas Island </option>
                                            <option value="Cocos Islands ">Cocos Islands </option>
                                            <option value="Colombia ">Colombia </option>
                                            <option value="Comoros ">Comoros </option>
                                            <option value="Congo ">Congo </option>
                                            <option value="Cook Islands ">Cook Islands </option>
                                            <option value="Costa Rica ">Costa Rica </option>
                                            <option value="Croatia">Croatia</option>
                                            <option value="Cuba">Cuba</option>
                                            <option value="Cyprus ">Cyprus </option>
                                            <option value="Czech Republic">Czech Republic</option>
                                            <option value="Denmark">Denmark</option>
                                            <option value="Djibouti">Djibouti</option>
                                            <option value="Dominica">Dominica</option>
                                            <option value="Dominican Republic">Dominican Republic</option>
                                            <option value="East Timor">East Timor</option>
                                            <option value="Ecuador">Ecuador</option>
                                            <option value="Egypt">Egypt</option>
                                            <option value="El Salvador">El Salvador</option>
                                            <option value="Equatorial Guinea">Equatorial Guinea</option>
                                            <option value="Eritrea">Eritrea</option>
                                            <option value="Estonia">Estonia</option>
                                            <option value="Ethiopia">Ethiopia</option>
                                            <option value="Falkland Islands ">Falkland Islands </option>
                                            <option value="Faroe Islands">Faroe Islands</option>
                                            <option value="Fiji">Fiji</option>
                                            <option value="Finland">Finland</option>
                                            <option value="France">France</option>
                                            <option value="Gabon">Gabon</option>
                                            <option value="Gambia">Gambia</option>
                                            <option value="Georgia">Georgia</option>
                                            <option value="Germany">Germany</option>
                                            <option value="Ghana">Ghana</option>
                                            <option value="Gibraltar">Gibraltar</option>
                                            <option value="Greece">Greece</option>
                                            <option value="Greenland">Greenland</option>
                                            <option value="Grenada">Grenada</option>
                                            <option value="Guadeloupe">Guadeloupe</option>
                                            <option value="Guam">Guam</option>
                                            <option value="Guatemala">Guatemala</option>
                                            <option value="Guinea">Guinea</option>
                                            <option value="Guinea-Bissau">Guinea-Bissau</option>
                                            <option value="Guyana">Guyana</option>
                                            <option value="Haiti">Haiti</option>
                                            <option value="Heard">Heard</option>
                                            <option value="Honduras">Honduras</option>
                                            <option value="Hong Kong">Hong Kong</option>
                                            <option value="Hungary">Hungary</option>
                                            <option value="Iceland">Iceland</option>
                                            <option value="India">India</option>
                                            <option value="Indonesia">Indonesia</option>
                                            <option value="Iran">Iran</option>
                                            <option value="Iraq">Iraq</option>
                                            <option value="Ireland">Ireland</option>
                                            <option value="Israel">Israel</option>
                                            <option value="Italy">Italy</option>
                                            <option value="Ivory Coast">Ivory Coast</option>
                                            <option value="Jamaica">Jamaica</option>
                                            <option value="Japan">Japan</option>
                                            <option value="Jordan">Jordan</option>
                                            <option value="Kazakhstan">Kazakhstan</option>
                                            <option value="Kenya">Kenya</option>
                                            <option value="Kiribati">Kiribati</option>
                                            <option value="Korea, North">Korea, North</option>
                                            <option value="Korea, South">Korea, South</option>
                                            <option value="Kuwait">Kuwait</option>
                                            <option value="Kyrgyzstan">Kyrgyzstan</option>
                                            <option value="Laos">Laos</option>
                                            <option value="Latvia">Latvia</option>
                                            <option value="Lebanon">Lebanon</option>
                                            <option value="Lesotho">Lesotho</option>
                                            <option value="Liberia">Liberia</option>
                                            <option value="Libya">Libya</option>
                                            <option value="Liechtenstein">Liechtenstein</option>
                                            <option value="Lithuania">Lithuania</option>
                                            <option value="Luxembourg">Luxembourg</option>
                                            <option value="Macau">Macau</option>
                                            <option value="Macedonia">Macedonia</option>
                                            <option value="Madagascar">Madagascar</option>
                                            <option value="Malawi">Malawi</option>
                                            <option value="Malaysia">Malaysia</option>
                                            <option value="Maldives">Maldives</option>
                                            <option value="Mali">Mali</option>
                                            <option value="Malta">Malta</option>
                                            <option value="Marshall Islands">Marshall Islands</option>
                                            <option value="Martinique">Martinique</option>
                                            <option value="Mauritania">Mauritania</option>
                                            <option value="Mauritius">Mauritius</option>
                                            <option value="Mayotte">Mayotte</option>
                                            <option value="Mexico">Mexico</option>
                                            <option value="Micronesia">Micronesia</option>
                                            <option value="Moldova">Moldova</option>
                                            <option value="Monaco">Monaco</option>
                                            <option value="Mongolia">Mongolia</option>
                                            <option value="Montserrat">Montserrat</option>
                                            <option value="Morocco">Morocco</option>
                                            <option value="Mozambique">Mozambique</option>
                                            <option value="Myanmar">Myanmar</option>
                                            <option value="Namibia">Namibia</option>
                                            <option value="Nauru">Nauru</option>
                                            <option value="Nepal">Nepal</option>
                                            <option value="Netherlands">Netherlands</option>
                                            <option value="Netherlands Antilles">Netherlands Antilles</option>
                                            <option value="New Caledonia">New Caledonia</option>
                                            <option value="New Zealand">New Zealand</option>
                                            <option value="Nicaragua">Nicaragua</option>
                                            <option value="Niger">Niger</option>
                                            <option value="Nigeria">Nigeria</option>
                                            <option value="Niue">Niue</option>
                                            <option value="Norfolk Island">Norfolk Island</option>
                                            <option value="Northern Mariana Islands">Northern Mariana Islands</option>
                                            <option value="Norway">Norway</option>
                                            <option value="Oman">Oman</option>
                                            <option value="Pakistan">Pakistan</option>
                                            <option value="Palau">Palau</option>
                                            <option value="Panama">Panama</option>
                                            <option value="Papua New Guinea">Papua New Guinea</option>
                                            <option value="Paraguay">Paraguay</option>
                                            <option value="Peru">Peru</option>
                                            <option value="Philippines">Philippines</option>
                                            <option value="Pitcairn Island">Pitcairn Island</option>
                                            <option value="Poland">Poland</option>
                                            <option value="Portugal">Portugal</option>
                                            <option value="Puerto Rico">Puerto Rico</option>
                                            <option value="Qatar">Qatar</option>
                                            <option value="Reunion">Reunion</option>
                                            <option value="Romania">Romania</option>
                                            <option value="Russia">Russia</option>
                                            <option value="Rwanda">Rwanda</option>
                                            <option value="S.Georgia">S.Georgia</option>
                                            <option value="Saint Kitts Nevis">Saint Kitts Nevis</option>
                                            <option value="Saint Lucia">Saint Lucia</option>
                                            <option value="Saint Vincent">Saint Vincent</option>
                                            <option value="Samoa">Samoa</option>
                                            <option value="San Marino">San Marino</option>
                                            <option value="Sao Tome">Sao Tome</option>
                                            <option value="Saudi Arabia">Saudi Arabia</option>
                                            <option value="Senegal">Senegal</option>
                                            <option value="Seychelles">Seychelles</option>
                                            <option value="Sierra Leone">Sierra Leone</option>
                                            <option value="Singapore">Singapore</option>
                                            <option value="Slovakia">Slovakia</option>
                                            <option value="Slovenia">Slovenia</option>
                                            <option value="Somalia">Somalia</option>
                                            <option value="South Africa">South Africa</option>
                                            <option value="Spain">Spain</option>
                                            <option value="Sri Lanka">Sri Lanka</option>
                                            <option value="St. Helena">St. Helena</option>
                                            <option value="St. Pierre">St. Pierre</option>
                                            <option value="Sudan">Sudan</option>
                                            <option value="Suriname">Suriname</option>
                                            <option value="Svalbard">Svalbard</option>
                                            <option value="Swaziland">Swaziland</option>
                                            <option value="Sweden">Sweden</option>
                                            <option value="Switzerland">Switzerland</option>
                                            <option value="Syria">Syria</option>
                                            <option value="Taiwan">Taiwan</option>
                                            <option value="Tajikistan">Tajikistan</option>
                                            <option value="Tanzania">Tanzania</option>
                                            <option value="Thailand">Thailand</option>
                                            <option value="Togo">Togo</option>
                                            <option value="Tokelau">Tokelau</option>
                                            <option value="Tonga">Tonga</option>
                                            <option value="Trinidad">Trinidad</option>
                                            <option value="Tunisia">Tunisia</option>
                                            <option value="Turkey">Turkey</option>
                                            <option value="Turkmenistan">Turkmenistan</option>
                                            <option value="Turks">Turks</option>
                                            <option value="Tuvalu">Tuvalu</option>
                                            <option value="Uganda">Uganda</option>
                                            <option value="Ukraine">Ukraine</option>
                                            <option value="United Arab Emirates">United Arab Emirates</option>
                                            <option value="United Kingdom">United Kingdom </option>
                                            <option value="Uruguay">Uruguay</option>
                                            <option value="Uzbekistan">Uzbekistan</option>
                                            <option value="Vanuatu">Vanuatu</option>
                                            <option value="Vatican City">Vatican City</option>
                                            <option value="Venezuela">Venezuela</option>
                                            <option value="Vietnam">Vietnam</option>
                                            <option value="Virgin Islands">Virgin Islands </option>
                                            <option value="Wallis">Wallis</option>
                                            <option value="Western Sahara">Western Sahara </option>
                                            <option value="Yemen">Yemen</option>
                                            <option value="Yugoslavia">Yugoslavia</option>
                                            <option value="Zaire">Zaire</option>
                                            <option value="Zambia">Zambia</option>
                                            <option value="Zimbabwe">Zimbabwe</option>
                                            <option value="Other">Other</option>
                                        </select>
                                    </div> 
                                </div -->

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Address</label>
                                    <div class="col-sm-6">
                                        <input value="<?php echo isset($user->address) ? $user->address : set_value('Address') ?>" placeholder="input Address ..." type="text" name="Address" id="Address">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">Request</label>
                                    <div class="col-sm-6">
                                        <textarea placeholder="place inpit Requestq" name="Content" id="Content" style="height:80px;">
                                            <?php echo set_value('Content') ?>
                                        </textarea>
                                    </div>

                                </div>
                            <?php endforeach ?>

                        <div class="w-line-pay div-scroll" style="height: 160px;" id="chinh-sach">
                                On booking online or signing our booking form when making reservation over the phone or by email, you are deemed to have read and accepted our Booking Conditions (which constitutes the entire agreement between you and us). By accepting, you certify that you are an adult (At least 18 years old) with full legal authority to enter into this agreement for yourself and on behalf of all accompanying passengers on your reservation. The services to be provided are those referred to in your booking confirmation invoice.<br>
                                This terms and conditions are subject to change at any time, and it is your responsibility to check these terms and conditions regularly in case there are any changes.<br>
                                Continuing to use our travel service after a change has been made is your acceptance of those changes.<br>
                                In this Terms and Conditions, the words “Passenger” or “Customer” or “Client” refer to you, the person who agrees to book, purchase, travel on a tour, including any accompanying minors, and all of the passenger’s heirs, successors in interest and personal representatives. “Company” or the term “We” or “Us” refer to&nbsp;<strong>Swallow (SWALLOW VIET NAM TOURIST JOINT STOCK COMPANY)</strong><br>
                                &nbsp;<br>
                                <strong>1. BOOKING STATUS</strong><br>
                                All services described in the detailed itineraries will be booked after receiving your approval and confirmation of the proposal.<br>
                                &nbsp;<br>
                                <strong>2. DEPOSIT &amp; FINAL PAYMENT</strong><br>
                                You are required to pay a deposit of 25% of the total package cost for your booking to be confirmed (please note that increased deposit requirements may be applied for some trips).<br>
                                Except as otherwise agreed by <strong>Swallow</strong>, the final payment or the balance is required 45 days before departure. If the final payment is not paid on or before the due date<strong>, Swallow </strong>we reserve the right to treat your booking as cancelled.<br>
                                If your booking is made within 45 days (1 months) to the customer’s arrival date then the full amount is required at the time of booking.<br>
                                Except as otherwise agreed by <strong>Swallow</strong>, Client’s payment shall be made by cash or credit card.<br>
                                &nbsp;<br>
                                <strong>3. CANCELLATIONS:</strong><br>
                                3.1 Cancellation by the traveler<br>
                                (+) If you cancel some or all portions of your booking, cancellation fees will be applied. The effective date of cancellation will be the date the Company receives written notification. The cancellation charge to the clients is described as follows:<br>
                                More than 30 days before arrival: NO cancellation charge.<br>
                                More than 15 days prior to departure: We will retain the deposit<br>
                                14 - 10 days prior to departure: 30% of the Tour price is forfeited<br>
                                9 - 05 days prior to departure: 50% of the Tour price is forfeited<br>
                                Less than 05 days prior to departure: 100 % of the Tour price is forfeited<br>
                                For the avoidance of doubt, because there are some suppliers (airlines, hotels, and cruise companies) have cancellation policies that are different from those of Vietnam Must See Travel, the cancellation charge may, at our discretion, be adjusted accordingly.<br>
                                (+) Cancellation of Extra Services<br>
                                For additional hotel nights and other extra services booked in connection with the planed itinerary (reservation), cancellations will be charged as follows:<br>
                                More than 15 days prior to the service, the extra fee will be refunded fully<br>
                                14 - 5 days prior to the service: 50% of the price is forfeited<br>
                                Less than 5 days prior to the service: 100% of the price is forfeited (Unless we can negotiate otherwise with the hotel or other suppliers)<br>
                                &nbsp;<br>
                                3.2 Cancellation by <strong>Swallow</strong><br>
                                We may cancel a trip at any time prior to departure if, due to terrorism, natural disasters, political instability or other external events it is not viable for us to operate the planned trip. If we cancel your trip, you can transfer the amounts paid to an alternate departure date or alternatively receive a full refund (not included the bank transfer fee or any third party’s service charge). In circumstances where the cancellation is due to external events outside our reasonable control, refunds will be less any unrecoverable costs. We are not responsible for any incidental expenses that you may have incurred as a result of your booking including but not limited to visas, vaccinations, and travel insurance excess or non-refundable flights.<br>
                                (*) For this particular clause, you are advised to have the mentioned cases covered by your own travel insurance.<br>
                                &nbsp;<br>
                                4. CLAIMS &amp; REFUND OF UNUSED SERVICES<br>
                                No refunds or exchanges can be made in respect of accommodation, meals, sightseeing tours, transport or any other services which are included in the Tour prices but not utilized by the Tour member.<br>
                                For claims to be considered, they must be received in writing by Vietnam Must See Travel within 30 days of the termination of the program and be accompanied by supporting documentation.<br>
                                Any adjustment considered will be based on the actual price of the services involved and not on a per diem basis. <strong>Swallow </strong>will not accept any liability for claims that are not received within 30 days of the termination of your travel program.<br>
                                &nbsp;<br>
                                5. OBLIGATIONS OF THE CLIENTS<br>
                                The Customer is obliged to check their travel documentation to ensure that the dates are correct and should notify <strong>Swallow </strong>immediately of any errors or omissions<br>
                                It is the responsibility of the Customer to ensure that their travel documentation is in order, e.g. passport and visa<br>
                                Where the Customer does not arrive on the agreed date for the Tour, <strong>Swallow </strong>is entitled to treat the Tour as having been cancelled by the Customer<br>
                                The Customer agrees to abide by instructions given by <strong>Swallow ‘s</strong>&nbsp; crew and agrees to indemnify the Company against any loss or injury suffered as a result of failing to comply with Crew instructions<br>
                                Customer agrees not to damage accommodation and should such damage arise, agrees to pay the owner for the price of repair or replacement of same.
                            </div>
                                <div id="check-dong-y" class="form-group">
                                    <label class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6">
                                        <input type="checkbox" name="agreed">I certify to Swallow Viet Nam Tourist Joint Stock Company that I have read the <a href="">terms &amp; conditions</a> and agreed to their guidelines
                                        <div style="color: red;"><?php echo form_error('agreed')?></div>
                                    </div>
                                    
                                    
                                </div>
                            <br>
                            <div class="form-group">
                                <div class="col-sm-offset-3 col-sm-9">
                                    <input type="submit" value="Continue" class="btn btn-primary" style="margin-top: 0px;">
                                    <img src="/Content/images/payment.jpg" style="float: right">
                                </div>
                            </div>
                    </form>
                
            </div>
            <div class="col-lg-3">
                <div id="sidebar">
    


<style>
    h4.sub-menu-left {
        background: none;
        font-size: 13px;
    }

        h4.sub-menu-left span {
            margin-right: 5px;
            color: #003580;
        }
</style>
    

        <div class="wrap-item-sidebar">
            <a alt="Early bird SALES"><img src="/files/files/Promotion/early%20bird%20promotion.jpg" width="279px"></a>
        </div>
       
    <div class="clearfix"></div>
</div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</section>


<div id="wraploadding">
    <div id="imgloadding"><img src="/Areas/Administrator/Content/img/ajax-loader.gif" alt="loading"></div>
</div>

<style>
    .div-scroll {
        width: 97.5%!important;
        border: 1px solid #ccc;
        padding: 10px;
        margin: 25px 0px 5px!important;
        overflow-y: scroll;
    }
</style>