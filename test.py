# importing flask

from flask import *

# initializing our app
app=Flask(__name__)

# creating routes
@app.route("/api/home")

# Define function
def home():
 return jsonify({"message":"welcome to home API"})


# endpoint for products

@app.route("/api/products")


def products():
 return jsonify({"messege":"welcome to products API"})


# endpiont for services

@app.route("/api/services")


def services():
 return jsonify({"messege":"welcome to services  API"})


# endpoint to calculate two numbers
@app.route("/api/calc",methods=["post"])
def calc():
 num1=request.form["num1"]
 num2=request.form["num2"]
 sum=int(num1)+int(num2)
 return jsonify({"answer is":sum})


@app.route("/api/simpleintrest",methods=["POST"])
def simple_intrest():
 principal=request.form["principal"]
 rate=request.form["rate"]
 time=request.form["time"]
 simple_intrest=int(principal)*int(rate)*int(time)/100
 return jsonify({"answer is":simple_intrest})


 


















































# RUNNING THE APPLICATION 
app.run(debug=True)