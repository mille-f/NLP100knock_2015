import re

s = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
regex = r"[\W]+"
num = [1, 5, 6, 7, 8, 9, 15, 16, 19]
ans = {}

w = re.split(regex, s)
w. remove("")

for i, v in enumerate(w):
    if (i + 1) in num:
        ans[w[i][0:1]] = i + 1
    else:
        ans[w[i][0:2]] = i + 1

sorted(ans.items(), key=lambda x: x[1])
print(ans)
