def isOdd(n):
    if (n % 2 == 1):
        return(True)
    return(False)

n1 = isOdd(4)
n2 = isOdd(3)

class Animal:
    def __init__(self, species, sound):
        self.species = species
        self.sound = sound

    def introduce(self):
        print("I'm a " + self.species + " and I say " + self.sound)
