import math 
radius= float(input("Enter the radius of the circle"))
area= math.pi*radius**2

circumference= 2*math.pi*radius

print("the area of the circle is:",area)
print("the circumference of thee circle is:", circumference)


##########################################################################

import shutil
import sys

def chec_dis_usage(disk, thres):
  du=shutil.disk_usage(disk)
  percentage=100* du.free/du.total
  gigabyte_free=du.free/2**30
 
  if prefcentage_free< threshold:
    print(f"warning: disk space low. only {percentage_free: .2f}%free")

else:
print(f"within limit {perfectna_free: .2f}")

############################################################################
if __name__ == "__main__":
    disk = sys.argv[1] if len(sys.argv) > 1 else "/"
    threshold = float(sys.argv[2]) if len(sys.argv) > 2 else 20.0


sys.argc

############################################################################


import logging
########################################################

def replace_letter (input_string, target_letter, replacement_letter):

  modifi=input_string.replace(target_letter,replace_letter)
  return modifi

if __name__ == "___main__":
  input_string=input("give me a word")
  target_letter=input("what letter to replace")
  repalce_letter=input("what letterto replace with")
  

if __name__ == "__main__"

if len(target_letter)!1 or len(replaec _letter)!=1:
  print("please entter one chaaracter")
else 

  result= replace_letter(input_string, taarget_letter, repalce_letter)
  print("Modified string":, result)


##########################################################################

def add_number (a,b)
  return a+b


if __name__="__main__"
  result=add_number(10,20)
  print("The result is:", result)

############################################

## a base class

class TestClass;
  test_var=(1,2,3)
  another_var="something"

  def test_func(self);
    print('functionin a class')
    print(self.test_var)
    self.another_funct('123')

  def anoth_func(self, paramater)
    print(test_param)



test= TestClass()
print(test.test_var)
test.another_var='new value'
print(test.another_var)

test2=testclass()
print(test2.anotherv_var)
test2.test_funct()
test2.anoth_funct('test')


########################
class Person;
def __init__(self, name, age):
      self.name=name
      self.age
def gree(Self):
    return f'helloe my name    {self.name) {self.age)'



person1=person('Alice,20)
print(person1.greet())


#############################################

class entity:
    def attack(self):
        print(f' attack {seld.damage} damage')



class Monster(entity):
    def __init__(self,health,damage);
        self.health=health
        self.damage=damage
        
    def __repr__(self);
      retun f'a monster with {self.heath} HP'

 

monster=Monster(100,10)
print(monster.health)
monster.attack()

print (monster)

##############################################################


import emoji

print(emoji.emojize('Pyhotn is :red_heart:'))
print(emoji.emojize('Python is :thumbs_up:'))

##############################################################

batterList=[f'{letter}{number}' for letter in ('a','b','c','e','d')  for numebr in range(1,6) if  f'{letter}{number}'!='c3']
print(batterlist)


##############################################################################

def shouter (stra='hello', num=2):
if num<=10:  

  for i in range(num):
      print(stra.upper)

  else:
    print("you are too loud")

  return 'done'


status= shouter ('ragul',5)
print(status)


#######################################################

list_a=[1,2,3,4,5]
counter=0
for i in range(list_a):
    if i<5:
      print()
    else if:
     print()
while i==5:
      print(6* "last item")
        exercise_counter+=1

##########################################

exercise_lie=[1,2,3,4,5,6,]
print(exerise_list[8:2:-2])


