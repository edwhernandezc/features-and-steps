from behave import *
from mazo import *
from mano import Mano
from carta import Carta

@given('un {mazo} para jugar 21')
def step(context,mazo):
    context.mazo = mazo

@when('el repartidor reparte una {carta1} y luego otra {carta2}')
def step(context,carta1,carta2):
    c1= carta1.split(",")
    valor1=c1[0]
    pinta1=c1[1]
    context.carta1 = Carta(valor1, pinta1)

    c2= carta2.split(",")
    valor2=c2[0]
    pinta2=c2[1]
    context.carta2= Carta(valor2, pinta2)

    context.lista=[]
    context.lista.append(context.carta1)
    context.lista.append(context.carta2)

    context.mano=Mano()
    context.mano.agregar_carta(valor1,pinta1)
    context.mano.agregar_carta(valor2,pinta2)


@then('la {mano:d} es correcta')
def step(context,mano):
    assert context.mano.dar_cantidad_cartas()==mano
