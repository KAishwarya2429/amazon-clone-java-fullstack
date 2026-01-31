<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Amazon Pay</title>
  <link rel="icon" href="https://www.amazon.in/favicon.ico">
  <!-- FontAwesome for decorative icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <style>
    body { font-family: "Amazon Ember", Arial, sans-serif; background: #f2f2f2; margin: 0; color: #111; font-size: 17px; }
    .header { background: #232f3e; color: #fff; padding: 20px; text-align: center; }
    .header h1 { font-size: 32px; margin: 0; }
    .section { max-width: 1200px; margin: 30px auto; padding: 20px; background: #fff; border-radius: 8px; box-shadow: 0 2px 6px rgba(0,0,0,0.1); }
    .section h2 { font-size: 24px; color: #e47911; margin-bottom: 15px; }
    .grid { display: grid; grid-template-columns: repeat(auto-fit,minmax(220px,1fr)); gap: 20px; }
    .card { background: #fafafa; padding: 15px; border-radius: 6px; text-align: center; box-shadow: 0 1px 3px rgba(0,0,0,0.1); transition: transform .2s; }
    .card:hover { transform: translateY(-5px); }
    .card img { width: 48px; height: 48px; margin-bottom: 10px; }
    .card h3 { font-size: 18px; margin: 0; color: #232f3e; }
    .footer {
  background-color: #232f3e;
  color: white;
  padding: 40px 20px;
  font-size: 14px;
}
.footer-sections {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  gap: 50px;
  max-width: 1200px;
  margin: 0 auto;
}
.footer-col {
  display: flex;
  flex-direction: column;
}
.footer h4 {
  font-size: 16px;
  margin-bottom: 10px;
  font-weight: bold;
}
.footer a {
  color: #ddd;
  text-decoration: none;
  margin: 4px 0;
}
.footer a:hover {
  text-decoration: underline;
}
.footer-bottom {
  text-align: center;
  margin-top: 20px;
}
    
  </style>
</head>
<body>

<div class="header">
  <h1>Amazon Pay</h1>
  <p>Balance: ₹0.00</p>
</div>

<div class="section">
  <h2>Quick Actions</h2>
  <div class="grid">
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/3202/3202604.png" alt="Add Money"><h3>Add Money</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/1055/1055687.png" alt="Gift Card"><h3>Add Gift Card</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/3046/3046123.png" alt="Settings"><h3>Account Settings</h3></div>
  </div>
</div>

<div class="section">
  <h2>Travel</h2>
  <div class="grid">
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/3560/3560026.png" alt="Flights"><h3>Flights</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/938/938209.png" alt="Bus Tickets"><h3>Bus Tickets</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/860/860814.png" alt="Trains"><h3>Trains</h3></div>
  </div>
</div>

<div class="section">
  <h2>Recharges</h2>
  <div class="grid">
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/1250/1250695.png" alt="Mobile Recharge"><h3>Mobile Recharge</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/990/990742.png" alt="DTH"><h3>DTH Recharge</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/906/906334.png" alt="Google Play"><h3>Google Play</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/732/732213.png" alt="App Store"><h3>App Store Code</h3></div>
  </div>
</div>

<div class="section">
  <h2>Bill Payments</h2>
  <div class="grid">
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/3071/3071877.png" alt="Electricity"><h3>Electricity</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/888/888853.png" alt="Postpaid"><h3>Mobile Postpaid</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/454/454467.png" alt="Credit Card"><h3>Credit Card Bill</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/470/470937.png" alt="Loan"><h3>Loan Repayment</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/1587/1587041.png" alt="LPG"><h3>LPG</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/683/683722.png" alt="Insurance"><h3>Insurance Premium</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/3160/3160801.png" alt="Gas"><h3>Piped Gas</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/4134/4134445.png" alt="Water"><h3>Water Bill</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/3209/3209986.png" alt="Landline"><h3>Landline</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/1180/1180347.png" alt="Broadband"><h3>Broadband</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/833/833314.png" alt="Tax"><h3>Municipal Tax</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/3225/3225455.png" alt="Cable TV"><h3>Cable TV</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/3523/3523063.png" alt="Education"><h3>Education Fees</h3></div>
  </div>
</div>

<div class="section">
  <h2>Insurance & FASTag</h2>
  <div class="grid">
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/1055/1055646.png" alt="FASTag"><h3>FASTag</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/743/743131.png" alt="Car Insurance"><h3>Car Insurance</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/743/743132.png" alt="Bike Insurance"><h3>Bike Insurance</h3></div>
  </div>
</div>

<div class="section">
  <h2>Gift Cards & Vouchers</h2>
  <div class="grid">
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/2400/2400525.png" alt="Add Gift Card"><h3>Add Gift Card</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/886/886377.png" alt="Amazon Vouchers"><h3>Amazon Vouchers</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/1144/1144791.png" alt="Brand Vouchers"><h3>Brand Vouchers</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/1077/1077973.png" alt="Birthday Cards"><h3>Birthday Giftcards</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/738/738937.png" alt="Wedding Cards"><h3>Wedding Giftcards</h3></div>
    <div class="card"><img src="https://cdn-icons-png.flaticon.com/512/187/187980.png" alt="Corporate"><h3>Corporate Gifting</h3></div>
  </div>
</div>

<div class="footer">
  <p style="text-align:center; margin-bottom: 20px;">
    <a href="#" style="color:#fff; text-decoration:none;">Back to top</a>
  </p>

  <div class="footer-sections">
    <div class="footer-col">
      <h4>Get to Know Us</h4>
      <a href="#">About Us</a>
      <a href="#">Careers</a>
      <a href="#">Press Releases</a>
      <a href="#">Amazon Science</a>
    </div>
    <div class="footer-col">
      <h4>Connect with Us</h4>
      <a href="#">Facebook</a>
      <a href="#">Twitter</a>
      <a href="#">Instagram</a>
    </div>
    <div class="footer-col">
      <h4>Make Money with Us</h4>
      <a href="#">Sell on Amazon</a>
      <a href="#">Sell under Amazon Accelerator</a>
      <a href="#">Become an Affiliate</a>
      <a href="#">Advertise Your Products</a>
    </div>
    <div class="footer-col">
      <h4>Let Us Help You</h4>
      <a href="#">COVID-19 and Amazon</a>
      <a href="#">Your Account</a>
      <a href="#">Returns Centre</a>
      <a href="#">100% Purchase Protection</a>
      <a href="#">Help</a>
    </div>
  </div>

  <hr style="border: none; border-top: 1px solid #666; margin: 30px 0;">

  <div class="footer-bottom">
    <p style="text-align: center;">© 1996–2025, Amazon.com, Inc. or its affiliates</p>
  </div>
</div>


</body>
</html>
