import re

s = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
regex = r"[^a-zA-Z0-9_]+"

l = re.split(regex, s)
l.remove("")

for i in range(0, len(l)):
    l[i] = len(l[i])

print(l)
