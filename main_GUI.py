__author__ = 'lee'

from pyswip import Prolog
from Tkinter import *


def create_query(age, money, family):
    return "advisor:is_suitable_car(client(%s, %s, %s), Car)." % (age, money, family)

if __name__ == "__main__":
    top = Tk()

    p = Prolog()
    p.consult("advisor.pl")
    print "Witaj w AutomobileAdvisor!!"
    print "Program pomoze w wyborze odpowiedniego dla ciebie auta przy pomocy paru pytan"
    print "W jakim jestes wieku(wpisz numer)? 0 - mlody 1 - sredni 2 - podeszly"

    label=Label(top,text="How old are you?")
    label.pack()

    frame=Frame(top)
    age=IntVar()
    choices=[
            ("young",0),
            ("mid",1),
            ("old",2)
        ]

    age.set(0)
    for text,i in choices:
        b=Radiobutton(frame,text=text,variable=age,value=i)
        b.pack(side=LEFT)
    frame.pack()

    #age = ["young", "mid", "old"][int(input())]

    label=Label(top,text="How rich are you?")
    label.pack()

    frame=Frame(top)
    money=IntVar()
    choices=[
        ("poor",0),
        ("average",1),
        ("rich",2)
    ]

    money.set(0)
    for text,i in choices:
        b=Radiobutton(frame,text=text,variable=money,value=i)
        b.pack(side=LEFT)
    frame.pack()
    
    label=Label(top,text="What is your marital status?")
    label.pack()

    frame=Frame(top)
    family=IntVar()
    choices=[
        ("single",0),
        ("married",1)
        ]

    family.set(0)
    for text,i in choices:
        b=Radiobutton(frame,text=text,variable=family,value=i)
        b.pack(side=LEFT)
    frame.pack()
    
    print "Jak bardzo jestes zamozny(wpisz numer)? 0 - biedny 1 - sredni 2 - bogaty"
    #money = ["poor", "mid", "rich"][int(input())]
    print "Jaki jest twoj stan cywilny(wpisz numer)? 0 - kawaler 1 - zonaty"
    #family = ["single", "family_guy"][int(input())]

    top.mainloop()
    print "Najodpowiedniejsze dla ciebie auta to:"
    res = p.query(create_query(age, money, family))
    for r in res:
        print(r["Car"])
