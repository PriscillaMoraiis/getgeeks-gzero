
from faker import Faker
fake = Faker()

import bcrypt 

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed

def factory_user(target):

    data={
        'faker': { 
        'name':  fake.first_name(),
        'last': fake.last_name(),
        'email': fake.free_email(),
        'password': '123456'
        },
        'wrong_email':{
            'name': 'Priscilla',
            'last': 'Morais',
            'email': 'priscilla*morais.com.br',
            'password': 'pwd123'
        },
        'login':{
            'name': 'Priscilla',
            'last': 'Morais',
            'email': 'priscilla@morais.com.br',
            'password': 'pwd123'
        },
        'be_geek':{
            'name': 'Kim',
            'last': 'Dotcom',
            'email': 'kim@dot.com',
            'password': 'pwd123',
            'geek_profile': {
                'whats': '11999999999',
                'desc':  'Seu computador está lento? Reiniciando do nada? Talvez seja um virus, ou algum hardware com defeito. Posso fazer a manutenção no seu PC, formatando, reinstalando o SO, trocando algum componente físico e porque não remover o baidu ou qualquer outro malware',
                'printer_repair': 'Sim',
                'work': 'Remoto',
                'cost': '100'
            }
        },
        'short_desc':{
            'name': 'Peter',
            'last': 'Jordan',
            'email': 'peter@einerd.com',
            'password': 'pwd123',
            'geek_profile': {
                'whats': '21999999999',
                'desc':  'Formato seu PC',
                'printer_repair': 'Não',
                'work': 'Ambos',
                'cost': '200' 
            }
        },
        'long_desc':{
            'name': 'Dio',
            'last': 'Linux',
            'email': 'dio@linux.com',
            'password': 'pwd123',
            'geek_profile': {
                'whats': '21999999999',
                'desc':  'Instalo Distros Ubunto, Debian, ElementaryOS, PopOS, Linux Mint, Distros Ubunto, Debian, ElementaryOS, PopOS, Linux Mint, Distros Ubunto, Debian, ElementaryOS, PopOS, Linux Mint, Distros Ubunto, Debian, ElementaryOS, PopOS, Linux Mint, Distros Ubuntoo,Mint',
                'printer_repair': 'Não',
                'work': 'Remoto',
                'cost': '500' 
            }
        },'whats_null':{
            'name': 'Lana',
            'last': 'Del Rey',
            'email': 'lana@rey.com',
            'password': 'pwd123',
            'geek_profile': {
                'whats': '',
                'desc':  'Instalo Distros Ubunto, Debian, ElementaryOS, PopOS, Linux Mint, Distros Ubunto, Debian, ElementaryOS, PopOS, Linux Mint, Distros Ubunto, Debian, ElementaryOS, PopOS, Linux Mint, Distros Ubunto, Debian, ElementaryOS, PopOS, Linux Mint, Distros Ubuntoo,Mint',
                'printer_repair': 'Não',
                'work': 'Remoto',
                'cost': '500' 
            }
        }
    }    

    return data[target]