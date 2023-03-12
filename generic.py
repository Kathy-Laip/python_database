import random

upperLetters = 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧЩЫЪЬЭЮЯ'
lowerLetters = 'абвгдеёжзийклмнопрстуфхцчшщыъьэюя'
en_alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdrfghijklmnopqrstuvwxyz'
numbers = '0987654321'
days = ['понедельник', 'вторник', 'среда', 'четверг', 'пятница', 'суббота']
times = ['8:30-10:00', '10:10-11:40', '12:10-13:40', '13:50-15:20', '15:50-17:20', '17:30-19:00', '19:10-20:40']
street = ['(Кремл.35)', '(Кремл.16)', '(Кремл.18а)', '(УНИКС)']


def generic_name(up, low):
    return ''.join(random.choice(up[:20])) + ''.join(random.choices(low, k=random.randrange(4, 10)))

def generic_surname(up, low):
    return ''.join(random.choice(up[:20])) + ''.join(random.choices(low, k=random.randrange(6, 12)))

def generic_id_group():
    return str(random.randint(1, 75))

def generic_login(en_al):
    return ''.join(random.choices(en_al, k=random.randrange(8, 12)))

def generic_password(en_al, nums):
    pas = "".join(random.choices(nums, k=random.randrange(1,5))) + "".join(random.choices(en_al, k=random.randrange(5,8)))
    pas1 = list(pas)
    random.shuffle(pas1)
    return ''.join(pas1)

def generic_group():
    return '09-' + random.choice('9012') + str(random.randrange(0, 7)) + str(random.randrange(1, 5))

def generic_week():
    week = '(' + str(random.randint(1,9)) + '-' + str(random.randint(10, 17)) + ' неделя)'
    weeks = ['ч/н', 'н/н', week, '[]']
    return random.choice(weeks)

def generic_days():
    global days
    return random.choice(days)

def generic_times():
    global times
    return random.choice(times)

def generic_sub(up, low):
    low += ' '
    return ''.join(random.choice(up[:20])) + ''.join(random.choices(low, k=random.randrange(12, 40))) + '.'

def generic_teacher(up, low):
    return generic_surname(up, low) + ' ' + random.choice(up) + '.' + random.choice(up) + '.'

def generic_classroom():
    room = random.randrange(1, 16)
    if room < 10:
        room = '0' + str(room)
    else : room = str(room)
    return 'ауд. ' + str(random.randrange(1, 16)) + room

def generic_street():
    global street
    return random.choice(street)

def generic_feedback(en_al):
    en_al += ' .,;'
    return ''.join(random.choices(en_al, k=random.randrange(10, 50)))

def generic_table_account(n=1):
    rows = []
    for i in range(n):
        rows.append([generic_name(upperLetters,lowerLetters), generic_surname(upperLetters, lowerLetters), generic_surname(upperLetters, lowerLetters),
        int(generic_id_group()), generic_login(en_alphabet), generic_password(en_alphabet, numbers)])
    return rows

def generic_table_id_groups(n=1):
    rows = []
    for i in range(n):
        rows.append([generic_group()])
    return rows

def generic_table_timetable(n=1):
    rows = []
    for i in range(n):
        rows.append([int(generic_id_group()), generic_week(), generic_days(), generic_times(), generic_sub(upperLetters, lowerLetters), 
        generic_teacher(upperLetters, lowerLetters), generic_classroom(), generic_street()])
    return rows

def generinc_table_feedaback(n=1):
    global en_alphabet
    rows = [[generic_feedback(en_alphabet)] for i in range(n)]
    return rows
