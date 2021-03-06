from behave import *
from mazo import Mazo

@given('un mazo para jugar 21')
def step(context):
    context.mazo = Mazo()

@when('el repartidor baraja el mazo')
def step(context):
    context.mazo.barajar()

@then('las cartas 5 y 10 no son iguales')
def step(context):
    assert not context.mazo.dar_carta(5).son_iguales(context.mazo.dar_carta(10))

@then('la catidad de cartas es 52')
def step(context):
    assert  len(context.mazo.cartas) == 52