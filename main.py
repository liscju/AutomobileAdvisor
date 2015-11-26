__author__ = 'lee'

from pyswip import Prolog

if __name__ == "__main__":
    p = Prolog()
    p.consult('advisor.pl')
    res = p.query('advisor:is_suitable_car(client(young, rich, single), X).')
    for r in res:
        print(r)
