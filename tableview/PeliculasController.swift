//
//  ViewController.swift
//  tableview
//
//  Created by Alumno on 9/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class PeliculasController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var peliculas : [Pelicula] = []
    
    //Establece la altura de las celdas
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 69
    }
    
    //Numero de secciones que tiene el table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as? CeldaPeliculaController
        celda?.lblTitulo.text = peliculas[indexPath.row].titulo
        celda?.lblAño.text = peliculas[indexPath.row].año
        celda?.lblDirector.text = peliculas[indexPath.row].director
        return celda!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        peliculas.append(Pelicula(titulo: "Titanic", año: "1997", director: "James Cameron", genero: "Drama"))
        peliculas.append(Pelicula(titulo: "Chabelo y Pepito contra los monstruos", año: "1973", director: "Jose Estrada", genero: "Comedia"))
        peliculas.append(Pelicula(titulo: "Interstellar", año: "2014", director: "Christopher Nolan", genero: "Sci-fi/Aventura"))
        peliculas.append(Pelicula(titulo: "The Godfather", año: "1972", director: "Francis Ford Coppola", genero: "Crimen/Drama"))
        peliculas.append(Pelicula(titulo: "The Social Network", año: "2010", director: "David Fincher", genero: "Drama"))
    }


}

