__author__ = 'lee'

from pyswip import Prolog


def create_query(age, money, family):
    return "advisor:is_suitable_car(client(%s, %s, %s), Car)." % (age, money, family)

if __name__ == "__main__":
    p = Prolog()
    p.consult("advisor.pl")
    print "Witaj w AutomobileAdvisor!!"
    print "Program pomoze w wyborze odpowiedniego dla ciebie auta przy pomocy paru pytan"
    print "W jakim jestes wieku(wpisz numer)? 0 - mlody 1 - sredni 2 - podeszly"
    age = ["young", "mid", "old"][int(input())]
    print "Jak bardzo jestes zamozny(wpisz numer)? 0 - biedny 1 - sredni 2 - bogaty"
    money = ["poor", "mid", "rich"][int(input())]
    print "Jaki jest twoj stan cywilny(wpisz numer)? 0 - kawaler 1 - zonaty"
    family = ["single", "family_guy"][int(input())]

    print "Najodpowiedniejsze dla ciebie auta to:"
    res = p.query(create_query(age, money, family))
    for r in res:
        print(r["Car"])
