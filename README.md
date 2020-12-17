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


