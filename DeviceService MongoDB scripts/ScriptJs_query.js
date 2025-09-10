
db.Detalle_Reparaciones.updateOne(
  { IdRepara: 24 },
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Falla en el capacitor",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/ChOVC3I",
            descripcion: "Foto de la falla visible"
          }
        ]
      }
    }
  }
);


db.Detalle_Reparaciones.updateOne(
  { IdRepara: 25 },
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "No hay reparacion",
        notaTecnico: "Placa Quemada",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/75XoGqN",
            descripcion: "Foto de la falla visible"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 26 },
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Se cambió el cable",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/QoCIFT4",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 2},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Se realizó prueba funcional",
        notaTecnico: "Fuente Fallando",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/QjPN13d",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 38},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Se cambió la pantalla",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/qTHEg8m",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 3},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Se cambió motor rotativo",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/EZhjMeX",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 3},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Se cambió motor rotativo",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/EZhjMeX",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 4},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Se cambió placa",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/Io1JkEP",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);


db.Detalle_Reparaciones.updateOne(
  { IdRepara: 33},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Se cambió placa",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/Io1JkEP",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);


db.Detalle_Reparaciones.updateOne(
  { IdRepara: 5},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Se cambió placa entera",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/aecqZ2L",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 22},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Se cambió placa entera",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/aecqZ2L",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 6},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Se cambió cable",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/QlhqLv5",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 36},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Se cambió cable",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/QlhqLv5",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 7},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Se realizó prueba funcional",
        notaTecnico: "Rota en velocidad 1 pero en la velocidad 2 no rota",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/Bpnw26o",
            descripcion: "Foto del ventilador"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 37},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Funcional",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/o8IH7bf",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 8},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Funcional",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/QgTvbIh",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 9},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Funcional",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/Fp034jz",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 32},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Se realizó prueba funcional",
        notaTecnico: "No funciona / Placa con corrosión por agua",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/Fp034jz",
            descripcion: "Foto del teclado"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 10},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Se realizó prueba funcional",
        notaTecnico: "No rota el motor",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/FZIVfkl",
            descripcion: "Foto de la licuadora"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 35},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Motor rotativo cambiado",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/LWsdreF",
            descripcion: "Foto del cambio "
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 11},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Se cambió placa",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/XOazXoQ",
            descripcion: "Foto del cambio "
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 28},
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Se realizó prueba funcionale",
        notaTecnico: "No prende por fuente quemada",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/n3bZ9lh",
            descripcion: "Foto del cambio "
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 13 },
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Se cambió la antena",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/eHOddo7",
            descripcion: "Foto del cambio "
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 14 },
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Se realizó prueba funcional",
        notaTecnico: "No prende / Placa quemada",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/FhJA7Yz",
            descripcion: "Foto de la falla"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 15 },
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "No hay reparacion",
        notaTecnico: "Todos los componentes quemados / corroción / palca quebrada",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/QaiJeiZ",
            descripcion: "Foto de la falla"
          }
        ]
      }
    }
  }
);


db.Detalle_Reparaciones.updateOne(
  { IdRepara: 16 },
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Placa cambiada ",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/5i8Fn8N",
            descripcion: "Foto del cambio "
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 17 },
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "No hay reparación",
        notaTecnico: "Placa con corrosión  ",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/TpxS3Bl",
            descripcion: "Foto del la falla"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 18 },
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Placa reemplazada",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/3ML4nJ2",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 29 },
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Placa reemplazada",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/3ML4nJ2",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 19 },
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Placa reemplazada",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/ZBUNcpP",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);

db.Detalle_Reparaciones.updateOne(
  { IdRepara: 20 },
  {
    $push: {
      eventos: {
        fecha: new Date(),
        accion: "Reemplazo de pieza",
        notaTecnico: "Placa reemplazada",
        adjuntos: [
          {
            tipo: "imagen",
            url: "https://imgur.com/a/szC47Cd",
            descripcion: "Foto del cambio"
          }
        ]
      }
    }
  }
);

// CONSULTAS 

// A) Dado un IdRepara, queremos ver todos los eventos asociados a esa reparación,
//incluyendo las notas y fechas de cada acción realizada.

// Elegimos el IdRepara 24 

db.Detalle_Reparaciones.find(
    { IdRepara: 24 }).pretty();

// B) Queremos encontrar todas las reparaciones donde en los eventos haya una
//referencia a "placa", por ejemplo, para identificar equipos con problemas en la
//placa base.

db.Detalle_Reparaciones.find({
  $or: [
    { "eventos.accion": /placa/i },
    { "eventos.notaTecnico": /placa/i }
  ]
}).pretty();


// C)Queremos recuperar todas las reparaciones donde se han adjuntado imágenes del
//proceso de reparación.

// Decidimos que todos los productos deberían llevar una imagen de la reparación/el objeto que se repara o no / de la pieza que se cambió 
// Debido que guradando las imagenes loclamente solo se van a poder ver en una computradora dedcidimos usar "imgur.com" para colgar las imagenes y que sean visibles desde cualquier equipo 

db.Detalle_Reparaciones.find({
  "eventos.adjuntos": {
    $elemMatch: { tipo: "imagen" }
  }
}).pretty();


// D) Queremos saber cuántas reparaciones han pasado por una acción específica,
//como "Reemplazo de pieza", para evaluar la frecuencia de este tipo de intervención.



db.Detalle_Reparaciones.countDocuments({
  "eventos.accion": "Reemplazo de pieza"
});























