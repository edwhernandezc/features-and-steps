from behave import *
from mano import Mano

@given('una {mano} para plantarse')
def step(context,mano):
    context.mano=Mano()
    context.mano.mano_con_lista(mano.split(";"))
    context.plantar="False"

@when('el {valor:d} de la mano es >= que 18')
def step(context,valor):
    context.plantar=str(context.mano.plantar(valor))

@then('{plantar} es correcto')
def step(context,plantar):
    assert context.plantar ==
