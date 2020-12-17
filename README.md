# Juego 21 usando behave

Integrantes
* David Steven Santos
* Edwin Hernandez Cabrera

## Descripción

Se desea implementar y desarrollar el juego de 21 o blackjack para esto se tomara una metodología ágil y así se empieza con las historias de usuario básicas que el juego necesita.

## Historias de usuario 

Como ROL quiero ACCIÓN para FUNCIONALIDAD

* Como repartidor quiero entregar 2 cartas para iniciar el juego.
* Como jugador quiero determinar el valor de la mano para seguir jugando.
* Como jugador quiero plantarme para finalizar el turno.
* Como jugador quiero solicitar una carta adicional para seguir jugando.
* Como jugador quiero determinar el valor de una carta para determinar el valor de la mano.
* Como repartidor quiero barajar las cartas para iniciar el juego.
* Como repartidor quiero saber el valor de las manos para determinar quién gana.

## Dependencias y software a utilizar

* Principalmente se desarrolla usando el lenguaje Python 3.x
* pip necesario para instalación de dependencias de Pthon
* Como dependencia para realizar las pruebas se utilizará *behave*

## Preparación del entorno de desarrollo

### Instalación de la dependencia behave

Para esto se necesita tener instalado previamente pip!

Entonces

#### Instalar behave

En una terminal o consola de comandos, ingresar la siguiente instrucción:

```
  pip install behave
```
una vez que termine de instalar la dependencia ya podemos proceder con el desarrollo de pruebas

## Desarrollo de pruebas con behave

Una vez instalado la dependencia de behave se necesita crear un directorio donde incluya los Feature.

Estando dentro de la carpeta crearemos un archivo llamado **carta.feature** (más adelante seguiremos con el contenido de este archivo). También se creará otra carpeta llamada steps y dentro de ella creamos un archivo **steps_carta.py** (más adelante seguiremos con el contenido de este archivo).


### Features

los feature son archivos escritos en lenguaje natural realizado por cualquier persona que quiera describir un comportamiento dentro de un escenario para una funcionalidad en concreto.

#### Estructura de un feature

Esta es la estructura básica de un feature

```
Feature: <<nombre del feature>>

Scenario: <<nombre del escenario>>

Given <<texto>>
When <<texto>>
Then <<texto>>
```
Las partes principales del archivo feature son estas

**Given**: ponemos el sistema en un estado conocido antes de que el usuario (o sistema externo) comience a interactuar con el sistema (en los pasos Cuándo). Evite hablar de la interacción del usuario en situaciones dadas.

**When**: tomamos acciones clave que realiza el usuario (o el sistema externo). Esta es la interacción con su sistema que debería (o tal vez no debería) hacer que algún estado cambie.

**Then**: observamos los resultados.


#### Estructura de un step

Esta es la estructura básica. 
Dentro de la carpeta feature/steps/ creamos un archivo de python 

```
from behave import *  # Se importa la dependencia de behave


@given('<<texto del given que esta en el feature>>')
def step(<<argumentos>>):
  <<Contenido de la funcionalidad del step>>

@when('<<texto del when que esta en el feature>>')
def step(<<argumentos>>):
  <<Contenido de la funcionalidad del step>>

@then('<<texto del when que esta en el feature>>')
def step(<<argumentos>>):
  <<Contenido de la funcionalidad del step>>

```

## Desarrollo de las pruebas con el juego 21

Ahora bien, ya que tenemos la introducción básica y esencial de behave, vamos a implementar algunas pruebas para comprobar su correcto funcionamiento. Cabe aclarar que para este juego de 21 es muy básico y solo se encuentra el repartidor y un jugador.

### Feature y step de una carta

Vamos a tomar como ejemplo una prueba para los valores de una carta, por tanto, empezamos creando:
* El archivo carta.feature 
* En la carpeta steps/ creamos el archivo steps_carta.py

#### Feature

ahora en el archivo carta.feature vamos definir nuestro feature

```
Feature: Carta del 21

    Como jugador quiero determinar el valor de una carta para determinar el valor de la mano.

Scenario Outline: determinar valor carta
Given una <carta> para saber su valor
When el jugador quiere saber su valor
Then el <valor> de la carta es correcto

Examples:
    | carta         | valor | 
    | 2, picas      | 2     |
    | A, corazones  | 1     |
    | 8, treboles   | 8     |
    | J, picas      | 10    |
    | Q, picas      | 10    |
    | K, picas      | 10    |

```

Como se observa en el contenido del archivo se define un escenario que va a determinar el valor de una carta. 

También se establece el **Given, When y Then** dentro de estas 3 partes establecemos las condiciones para evaluar el comportamiento de la funcionalidad para determinar el valor de una carta.

Entonces 


```
Given una <carta> para saber su valor
```
Aquí definimos qué vamos a comprobar en este caso una carta.

```
When el jugador quiere saber su valor
```
Aquí definimos que el jugador desea saber su valor de la carta que se le ha entregado.

```
Then el <valor> de la carta es correcto
```
Aquí definimos el valor correcto que la carta debe tener

Ya por último, se tiene la sección de examples que son básicamente la definición explícita de algunos valores de unas cartas.

#### Step

Dentro del archivo steps_carta.py definimos lo siguiente

```
from behave import *
from carta import Carta

@given('una {carta} para saber su valor')
def step(context, carta):
    valor, pinta = carta.split(",")
    context.carta = Carta(valor, pinta)

@when('el jugador quiere saber su valor')
def step(context):
    context.valor = context.carta.evaluar()

@then('el {valor:d} de la carta es correcto')
def step(context, valor):
    assert context.valor == valor
```

Aquí como ya habiamos visto previamente se tienen 3 funciones definidas para cada parte del feature (Given, When y Then)

La explicación de las funciones es así

* La función del Given, se encarga de almacenar el valor y pinta de una carta.
* La función del When, se encarga de evaluar dentro de la clase Carte la funcion evaluar().
* La función del Then, se encarga de comprobar si el valor tanto del feature como el de la clase son iguales.


Así se realizará para los demás features y steps de las historias de usuario ya definidas.