def Singleton(a):
    A = [a]
    return A

def null(B):
    if B == []:
        boolean = 'true'
    else:
        boolean = 'false'
    return boolean

def snoc(B, b):
    C = B + [b]
    return C

def length(C):
    if not C:
        return 0
    return 1 + length(C[1:])

print("List1 =", Singleton(5))
print("Result =", null(Singleton(5) + [2.3, 5.6, 4.7]))
print("List2 =", snoc(Singleton(5) + [2.3, 5.6, 4.7], 96.3))
print("Length =", length(Singleton(5) + [2.3, 5.6, 4.7, 96.3]))
