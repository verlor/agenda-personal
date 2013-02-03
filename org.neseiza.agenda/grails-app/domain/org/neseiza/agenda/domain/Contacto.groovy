package org.neseiza.agenda.domain

class Contacto {
    String nombre
    String apellido
    String telefono
    String twitter
    String facebook
    String correo
    String direccion
    static constraints = {
        nombre blank:false
        apellido blank:false
        telefono blank:false
        direccion blank:false
    }
}
