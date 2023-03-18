#!/usr/bin/python3

import time
import random
from faker import Faker

faker = Faker()

def realistic_password(keywords, dob, mother_name):
    return faker.password(length=12, special_chars=True, digits=True, upper_case=True, lower_case=True, 
                          digits_before_letters=True, chars=keywords+dob+mother_name)

# Exemplo de keywords relacionadas ao hobby do usuário
keywords = "cycling, hiking, photography"

# Data de nascimento da vítima e nome da mãe
dob = "12011985"
mother_name = "Silva"

while True:
    for i in range(100):
        password = realistic_password(keywords, dob, mother_name)
        print(password)
    time.sleep(2) # Aguarda um intervalo de tempo de 2 segundos entre cada geração de 100 senhas
