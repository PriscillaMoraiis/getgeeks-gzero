
from faker import Faker
fake = Faker()

import bcrypt 

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

def factory_user():

    return {
        'name':  fake.first_name(),
        'last': fake.last_name(),
        'email': fake.free_email(),
        'password': '123456'

    }

    

def factory_wrong_email():

    first_name = fake.first_name()

    return {
        'name': first_name ,
        'last': fake.last_name(),
        'email': first_name.lower() + '$gmail.com',
        'password': '123456'

    }

def factory_user_login ():
    return{

        'name': 'Priscilla',
        'last': 'Morais',
        'email': 'priscilla@morais.com.br',
        'password': 'pwd123'
    }