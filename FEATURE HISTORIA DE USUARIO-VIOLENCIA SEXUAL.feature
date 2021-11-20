==================================================================================================================================================
Feature: HU01-Como usuario de la App quiero una guía de paso a paso  para conocer todas  las funcionalidades que brinda la aplicación.
Scenario: E01-Guia para el usuario.
TA01
Given que la víctima quiere ingresar a la aplicación por primera vez.
And  no sepa manejar todas las funciones que tiene nuestra aplicación
When  requiera registrarse o realizar alguna operación dentro del servicio.
And  la aplicación le brindé los pasos funcionales del app seleccionando el boton "pasos"
Then el sistema le mostrará los pasos a seguir del servicio.

Examples:
|boton pasos|Boton Salir|
| clik()    | clik()    | 
==================================================================================================================================================
Feature: HU02-Como víctima de acoso quiero una atención inmediata al momento de denunciar para poder recibir un apoyo psicológico de gran eficacia.

 Scenario: E01-Recibir ayuda inmediata
 TA01
 Given  la víctima realiza su denuncia
 And seleccione la opción "Urgente"
 When el usuario rellene los campos obligatorios de DNI y correo en el sistema.
 Then el sistema le proporcionará la validación de sus datos.
Examples:
|Boton Urgente|  DNI     | Correo electronico|Validar Datos|
| clik()      | 75462454 |    @gmail.com     |  clik()     | 

 Scenario: E02- respuesta inmediata.
 TA2
Given que el sistema recibió el mensaje del usuario.
And brindó la respuesta al usuario.
When  este reciba una notificación a través de la aplicación 
And el usuario acepté, seleccionando la opción "aceptar Notificación"
Then el Sistema le mostrará que su caso será tratado de manera inmediata.

|boton Aceptar notificación|boton Salir  |
|       clik ()            | clik()      | 
==================================================================================================================================================
Feature: HU03-Como víctima de acoso quiero acceder a los datos personales y profesionales de mi especialista para poder elegir la mejor opción para mí.  
Scenario: E01-recibir acceso a los datos del especialista

TA01

Given el usuario se encuentra registrado en la base de datos de la aplicacion 
And seleccione la opción " datos del especialista"
When el sistema cargue todos los datos de los especialistas
And el usuario selecciona al especialista de su agrado
Then el sistema mostrara toda la informacion de especialista seleccionado

Examples:
|   usuario      |    seleccion           | presionar boton     |mostrar                                |
|        U_02    |  datos_especialista    | boton_cargar        |informacion de especialista selecionado|

Scenario: E02- Asigna
TA02
Given se verificó en el sistema que los datos del cliente ya se encuentran registrados
And  el usuario se encuentra en el formulario "Elegir especialista"
And  el usuario confirma sus datos registrados
 When  el usuario selecciona al especialista y hace click en el botón "vincular" 
 Then  el sistema relacionará al especialista con  el usuario. 


 example
|    usuario        |   seleccion                          |  presionar_boton|
|         U_02      |    Elegir_especialista           |         vincular|
==================================================================================================================================================
Feature: HU04-Como víctima de acoso quiero ver el horario de mis citas asistidas y sus costos respectivamente para  que yo pueda llevar un control de mis gastos.
Scenario: E01-Horario de citas

TA01
Given el usuario quiere ver los horarios disponibles
 When el usuario seleccione el  "Horario de citas "
 And presione el boton "citas asistidas"
Then el programa mostrara un calendario con el total de citas

Examples:
|     usuario         |    seleccion           | presionar boton     |mostrar   |
|          U_02       |      horario_citas     | cistas_asistidas    |calendario|

Scenario: E02-Costo de citas 

TA02
Given el usuario se encuentre registrado en la base de datos de la aplicacion
And quiere llevar un control de gastos
 When  seleccione la opción "Reporte de gastos" en la App
 And seleccione el botón "Gasto por citas"
Then el sistema mostrara un reporte de gastos acumulados por cada cita

Examples:
|     usuario         |    seleccion           | presionar boton | mostrar                    |
|    u_20             |   Reporte_datos        | Gasto por citas |reporte de gastos acumulados|
==================================================================================================================================================
Feature:HU05- Como víctima de acoso quiero un servicio de confidencialidad con la aplicación para tener seguridad en  la app

Scenario: E01 - Confidencialidad 
TA01
Given que el sistema le proporcione la ventana de términos y condiciones del uso de la aplicación.
And y el usuario seleccioné el botón de "Aceptar" 
When  el sistema elimine la ventana de los términos y condiciones 
And el usuario podrá tener acceso directo a pantalla principal 
Then el sistema le mostrará todas las opciones correspondientes.

Examples:
| Botón Aceptar | mostrar                    |
|  clic()       | termino de confidencialidad|

Scenario: E02 - Rechazo de Confidencialidad 
TA02
Given que el sistema le proporcione la ventana de términos y condiciones del uso de la aplicación. 
And el usuario seleccioné el botón de "Rechazar "
When el sistema elimine la ventana de los términos y condiciones
And  el usuario no podrá tener acceso directo a pantalla principal 
Then  el sistema le mostrará todas las opciones correspondientes.

Examples:
| Botón Rechazar | mostrar           |
|  clic()        | opciones de salida|


==================================================================================================================================================
Feature:HU06- Como gerente quiero un registro de las víctimas de acoso y de los especialistas para tener un control administrativo de la aplicación.

Scenario: E01 - control administrativo
TA01
Given que el gerente quiera ver el registro de actividades de los que conforman la aplicación.
And el gerente seleccione la opción actividades 
When el sistema carga le mostrará los datos de cada usuario correspondiente.
And el gerente podrá seleccionar la opción "listar usuarios"
Then el sistema le brindará la lista de información de cada usuario.

Examples:
| Username | password | Botón Ingresar |
|          |          |  clic()        |


Scenario: E02 - control administrativo
TA02
Given que  el gerente quiera ver el registro de actividades  que conforman la aplicación
And  el gerente, seleccione la opción "Actualizar" 
When el sistema actualice la aplicación de manera remota.
Then el sistema le brindará todos los datos actualizados 

Examples:
| Username | password | Botón Ingresar |          mensaje          |
|          |          |   clic()       | Credenciales Incorrectas!!|
==================================================================================================================================================
Feature: HU07-Como gerente quiero un reporte económico en la aplicación para que yo pueda tener un control sobre las ganancias
Scenario: E01-Control de gastos

TA01

Given el gerente requiera el control de gastos del mes
And seleccione la opción "Gastos"
 When el gerente ingrese la fecha del mes a revisar
Then sistema mostrará el reporte a detalle el gastos del mes

Examples:
|     Usuario           |      seleccionar opción     |      mostrar reporte     |
|     Gerente           |        Gastos               |      gastos del mes      |

Scenario: E02-Control de ganancias
TA02

Given el gerente requiera el control de ganancias del mes
And seleccione la opción "Ganancias"
 When el gerente ingrese la fecha del mes a revisar
Then sistema sistema mostrará el reporte a detalle el ganancias del mes

Examples:
|         Usuario         |     seleccion de opción        |        Mostrar reporte     |
|         Gerente         |        Ganancias               |        ganancias del mes   |
==================================================================================================================================================
Feature: HU08-Como gerente quiero un control de citas agendadas por especialista para poder tener un reporte detallado sobre todos los casos atendidos mensualmente.
Scenario: E01-Control de citas por especialista

TA01
Given el gerente solicite un reporte de las citas agendadas por especialista.
And seleccione el botón "Citas programadas"
And seleccione el nombre del experto
 When el sistema muestre las citas agendadas por dicho especialista
 And el gerente pueda visualizar lo requerido 
Then confirmará la cantidad de citas registradas al mes. 

Examples:
|     Usuario           |      seleccionar opción     |     seleccionar experto |     mostrar reporte     |
|     Gerente           |        Citas programadas    |      Nombre de experto  |      citas agendadas    |

Scenario: E02-Control mensual de citas 
TA02
Given el gerente quiere obtener la información de todas las citas mensuales asistidas
And seleccione la opción "Citas mensuales"
When el sistema sistema brinde la información
And el gerente pueda visualizar el contenido requerido
Then el gerente podrá corroborar la cantidad de citas mensuales.

Examples:
|         Usuario         |     seleccion de opción        |        Mostrar reporte              |
|         Gerente         |        Citas mensuales         |        cantidad de citas mensuales  |


==================================================================================================================================================
Feature: HU09-Como especialista quiero un reporte del estado de la víctima antes, durante y después de recibir tratamiento para que yo pueda supervisar su desarrollo.
Scenario: E02-Revisar información especifica
TA1

Given el especialista requiere verificar el estado del cliente antes de brindarle el servicio 
And el especialista seleccione el botón "Estado antes"
 When el sistema cargue mostrará los datos a detalle de la situación del paciente
And el especialista ingrese "Tratar paciente"
Then el sistema enviara los archivos personales e individuales del usuario

Examples:
|          Usuario        |      selección de boton    |   mostar datos             |
|       Especialista      |         Estado antes       |   detalle de situación     |

Scenario: Revisar información especifica
TA2
Given el especialista requiere verificar el estado del cliente despues de brindale el servicio
And el especialista seleccione el botoón "Estado despues" 
When el sistema cargué mostrara los datos a detalle de la situación del paciente 
And el especialista ingrese "paciente tratado"
Then el sistema enviará si el estado ha mejorado o no despues de haber acudido al servicio

Examples:
|     usuario        |    selección de boton     |   mostar datos   |
|  Especialista      |      Estado despues       |   mejora despues del servicio      |
==================================================================================================================================================
Feature: HU10-Como especialista quiero un seguimiento hacia mi paciente para que yo pueda revisar su continuo proceso de superación y poder prevenir sus futuras recaídas emocionales.
Scenario: E01-Proceso de seguimineto hacia el paciente

TA1

Given dado que el especialista mantiene un seguimiento con el usuario 
And el especialista debe comprobar que el usuario lleve una vida estable presionando el boton "vida estable"
When el especialista piense que el usuario este regayendo tomará un proceso de superación 
And el usuario nos comenta que se siente emocionalmente calmado
Then el sistema hara un seguimineto al paciente si ha tenido un buen mejoramiento 

Examples:
|          usuario        |      selecione boton      |        mostras datos        |
|         especialista    |  control de vida estable  |    seguimineto al paciente  |

Scenario: E02-Recaida emocional
TA2
Given existe un riesgo que el usuario pueda recaer 
And de ser así el especialista deberá citar para un par de sesiones más presionando el boton "citar_paciente"
When cuando el especialista vea que el usuario ha mejorado en su totalidad
And el usuario se sienta mejor mentalmente
Then el especailista le dará de alta al usuario y dará por culminada las terapia designadas

Examples:
|           usuario        |     seleccione el boton      |   mostrar datos           |
|         especialita      |        citar_paciente        |   terapias_termiandas     |
