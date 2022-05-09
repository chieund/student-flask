import os
import psycopg2
from flask import Flask, render_template, request, redirect, url_for # include the flask library 

app = Flask(__name__)

def get_db_connection():
    conn = psycopg2.connect(host='localhost',
                            database='db_student',
                            user='postgres',
                            password='123456')
    return conn


# @app.route("/student")
# def list_student():
#     return render_template('list_student.html')

@app.route("/") 
def index(): 
   #sites=['twitter', 'facebook', 'instagram', 'whatsapp']
   

   conn = get_db_connection()
   cur = conn.cursor()
   cur.execute('select * from student order by name asc')
   students = cur.fetchall()
   print(students)
   cur.close()
   conn.close()

   return render_template('index.html', title='tieu de trang', students=students)

@app.route("/add", methods=('GET', 'POST')) 
def add():
    if request.method == 'POST':
       id = request.form['id']
       name = request.form['name']
       code = request.form['code']
       classes = request.form['classes']

       conn = get_db_connection()
       cur = conn.cursor()
       cur.execute('INSERT INTO student (id, name, code, classes)'
                    'VALUES (%s, %s, %s, %s)',
                    (id, name, code, classes))
       conn.commit()
       cur.close()
       conn.close()
       return redirect('/')
    return render_template('add_student.html')

@app.route("/test") 
def test(): 
   return render_template('student.html')

if __name__ == '__main__': 
   app.run(port=5000, debug=True) # application will start listening for web request on port 5000