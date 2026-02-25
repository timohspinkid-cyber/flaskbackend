 # creating a signup form
# importing flask and pymysql

from flask import *
import pymysql
import pymysql.cursors
import os


# initialize your app
app=Flask(__name__)

# confiqure your project to save the image to our folder
app.config["UPLOAD_FOLDER"]='static/images'

# create a route
@app.route("/api/signup",methods=["POST"])

#Extracting user inputs from a form
def signup():
    username=request.form["username"]
    email=request.form["email"]
    password=request.form["password"]
    phone=request.form["phone"]
    
    # connecting to our database
    connection=pymysql.connect(
        user="root",host="localhost",password=""
        ,database="simbasokogarden")

         
    
    # executing sql queries
    cursor=connection.cursor()
    sql="insert into users(username,password,email,phone)values(%s,%s,%s,%s)"

    # define our data
    data=(username,password,email,phone)

    #  execute our data
    cursor.execute(sql,data)

   # save to database
    connection.commit()

    return jsonify({"message":"Thank you for joining"})






# sign in api

@app.route("/api/signin",methods=["POST"])
#Extracting user inputs from a form
def signin():
    email=request.form["email"]
    password=request.form['password']

# connecting to our database
    connection=pymysql.connect(user="root",host="localhost",
    password="",database="simbasokogarden")

 # executing sql queries
    cursor=connection.cursor(pymysql.cursors.DictCursor)
    
    sql="select * from users where email=%s and password=%s"
    data=(email,password)
    cursor.execute(sql,data)
    if cursor.rowcount==0:
         return jsonify({"message":"login failed"})
    else:
         user=cursor.fetchone ()
         return jsonify({"message":"login successful","user":user})
    




# upload products api
# creating a routes

@app.route("/api/addproducts",methods=["POST"])
# extracting products details from the form

def addproducts():
    product_name=request.form["product_name"]
    product_description=request.form["product_description"]
    product_cost=request.form["product_cost"]
    product_photo=request.files["product_photo"]

# extracting the file name from the product photo
    filename=product_photo.filename


# specify the path to our static folder that contails images folder
    photopath=os.path.join(app.config["UPLOAD_FOLDER"],filename)
    product_photo.save(photopath)


# connecting to database
    connection=pymysql.connect(user="root",host="localhost",
    password="",database="simbasokogarden")


 # executing sql queries
    cursor=connection.cursor()

    sql="insert into product_details(product_name,product_description,product_cost,product_photo)values(%s,%s,%s,%s)"


# define our data    
    data=(product_name,product_description,product_cost,filename)

    cursor.execute(sql,data)

  # save to database   
    connection.commit()
    return jsonify({"message":"products adde successful"})


# get product endpoint

@app.route("/api/getproductdetails")
def getproductdetails():


    connection=pymysql.connect(user="root",host="localhost",password=""
                               ,database="simbasokogarden")
    
    cursor=connection.cursor(pymysql.cursors.DictCursor)

    cursor.execute("select *from product_details")

    # fetch the products from the database
    productdetails=cursor.fetchall()

    return jsonify(productdetails)     
    



# MPESA   API

        
    
import requests
import datetime
import base64
from requests.auth import HTTPBasicAuth

@app.route('/api/mpesa_payment', methods=['POST'])
def mpesa_payment():
    if request.method == 'POST':
    # Extract POST Values sent
        amount = request.form['amount']
        phone = request.form['phone']

        # Provide consumer_key and consumer_secret provided by safaricom
        consumer_key = "GTWADFxIpUfDoNikNGqq1C3023evM6UH"
        consumer_secret = "amFbAoUByPV2rM5A"

        # Authenticate Yourself using above credentials to Safaricom Services, and Bearer Token this is used by safaricom for security identification purposes - Your are given Access
        api_URL = "https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials" # AUTH URL
        # Provide your consumer_key and consumer_secret
        response = requests.get(api_URL, auth=HTTPBasicAuth(consumer_key, consumer_secret))
        # Get response as Dictionary
        data = response.json()
        # Retrieve the Provide Token
        # Token allows you to proceed with the transaction
        access_token = "Bearer" + ' ' + data['access_token']

        # GETTING THE PASSWORD
        timestamp = datetime.datetime.today().strftime('%Y%m%d%H%M%S') # Current Time
        passkey = 'bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919' # Passkey(Safaricom Provided)
        business_short_code = "174379" # Test Paybile (Safaricom Provided)
        # Combine above 3 Strings to get data variable  [getting the pasword]
        data = business_short_code + passkey + timestamp
        # Encode to Base64
        encoded = base64.b64encode(data.encode())
        password = encoded.decode()

        # BODY OR PAYLOAD
        payload = {
        "BusinessShortCode": "174379",
        "Password":password,
        "Timestamp": timestamp,
        "TransactionType": "CustomerPayBillOnline", 
        "Amount": '1', # use 1 when testing
        "PartyA": phone, # change to your number
        "PartyB": "174379",
        "PhoneNumber": phone,
        "CallBackURL": "https://coding.co.ke/api/confirm.php",
        "AccountReference": "simba SokoGarden Online",
        "TransactionDesc": "Payments for Products"
        }

        # POPULAING THE HTTP HEADER, PROVIDE THE TOKEN ISSUED EARLIER
        headers = {
        "Authorization": access_token,
        "Content-Type": "application/json"
        }

        # Specify STK Push Trigger URL{stk promp}
        url = "https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest"
        # Create a POST Request to above url, providing headers, payload
        # Below triggers an STK Push to the phone number indicated in the payload and the amount.
        response = requests.post(url, json=payload, headers=headers)
        print(response.text) #
        # Give a Response
        return jsonify({"message": "An MPESA Prompt has been sent to Your Phone, Please Check & Complete Payment"})



app.run(debug=True)

