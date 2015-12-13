from itertools import chain

w = [['パ', 'ト', 'カ', 'ー'], ['タ', 'ク', 'シ', 'ー']]
l = list(map(list, zip(*w)))
s = list(chain.from_iterable(l))
print("".join(s))
