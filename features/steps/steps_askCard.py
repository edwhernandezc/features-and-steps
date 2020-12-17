from behave import *
from mano import Mano
from mazo import Mazo

@given('una {mano} para solicitar carta')
def step(context,mano):
    context.mazo=Mazo()
    context.mano=Mano()
    context.mano.mano_con_lista(mano.split(";"))
@when('el {valor:d} de la mano es < que 18')
def step(context,valor):
    if(valor<18):
        context.mazo.barajar()
        c=context.mazo.dar_carta(0)
        valor=c.valor
        pinta=c.pinta

        print("****************************", valor ,pinta)

        context.mano.agregar_carta(valor,pinta)


@then('{nuevaCantidad:d} generada está bien')
def step(context,nuevaCantidad):
    assert context.mano.dar_cantidad_cartas()==nuevaCantidad
