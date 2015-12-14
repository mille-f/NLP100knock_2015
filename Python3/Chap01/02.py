from itertools import chain

w1 = "パトカー"
w2 = "タクシー"
l = [list(w1)]
l.append(list(w2))
l_t = list(map(list, zip(*l)))
s = list(chain.from_iterable(l_t))
print("".join(s))
