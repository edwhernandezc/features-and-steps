from behave import *
from mano import Mano

@given('{mano1} y {mano2} para determinar los valores')
def step(context,mano1,mano2):
    context.mano1=Mano()
    context.mano1.mano_con_lista(mano1.split(";"))

    context.mano2=Mano()
    context.mano2.mano_con_lista(mano2.split(";"))


@when('los jugadores se plantan')
def step(context):
    context.valor1 = context.mano1.evaluar()
    context.valor2 = context.mano2.evaluar()


@then('el {valor1:d} y el {valor2:d} son correctos')
def step(context,valor1,valor2):
    assert context.valor1 == valor1 and context.valor2 == valor2
