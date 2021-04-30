//
//  ModeloDatos.swift
//  Lab08MVC
//
//  Created by mbtec22 on 4/30/21.
//

import UIKit

class ModeloDatos {
    func obtenerSeccionesDesdeDatos() -> [Secciones] {
        var seccionesArray = [Secciones]()
        
        let canciones = Secciones(titulo: "Titulos de canciones", objetos: ["Karma Police","The Man Who Sold the World","mOBSCENE","No Surprises","Shoot to thrill"])
        
        let cantantes = Secciones(titulo: "Cantantes", objetos: ["Kurt Cobain","Thom Yorke","Brian Jhonson","Amy Winehouse"])
        
        let albums = Secciones(titulo: "Albums", objetos: ["Back in Black","Nevermind","Pablo Honey","Bleach"])
        
        let anios = Secciones(titulo: "Años", objetos: ["1990","1993","1994","1989"])
        
        seccionesArray.append(canciones)
        seccionesArray.append(cantantes)
        seccionesArray.append(albums)
        seccionesArray.append(anios)
        return seccionesArray
        
    }
}
