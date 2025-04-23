import re

class checkGrammar:
    def __init__(self):
        self.identifiers = {'suma', 'total', 'resta'}
        self.numbers = set(str(i) for i in range(11))

    def is_id(self, t):
        return t in self.identifiers

    def is_num(self, t):
        return t in self.numbers

    def is_fact(self, ts):
        if not ts:
            return False, []

        # Case id
        if self.is_id(ts[0]):
            return True, ts[1:]

        # Case number
        if self.is_num(ts[0]):
            return True, ts[1:]

        # Case (<expr>)
        if ts[0] == '(':
            r = ts[1:]
            valid, r = self.is_expr(r)
            if valid and r and r[0] == ')':
                return True, r[1:]


        return False, ts

    def is_term(self,ts):
        if not ts:
            return False, []

        valid, r = self.is_fact(ts)
        if not valid:
            return False, ts

        if not r:
            return True, r

        if r[0] in {'*','/'}:
            if len(r) < 2:
                return False, ts
        
            valid, r = self.is_fact(r[1:])
            if valid:
                return True, r
            return False, ts

        return True, r

    def is_expr(self,ts):
        if not ts:
            return False, []

        valid, r = self.is_term(ts)
        if not valid:
            return False, ts

        if not r:
            return True, r

        if r[0] in {'+','-'}:
            if len(r) < 2:
                return False, ts
            valid, r = self.is_term(r[1:])
            if valid:
                return True, r
            return False, ts

        return True, r

    def check(self, b):
        t = re.findall(r'\(|\)|\+|\-|\*|\/|suma|total|resta|\d+', b)
        valid, r = self.is_expr(t)
        return valid and not r

c = checkGrammar()

expr = [
    "(suma+4) / total",
    "4*resta+3"
]

for e in expr:
    res = c.check(e)
    print(f"Expr: {e}")
    print(" Si pertenece a la gramática" if res else " No pertenece a la gramática")
    print()