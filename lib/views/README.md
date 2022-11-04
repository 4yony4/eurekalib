# VIEWS HOMEVIEW

Esta carpeta contendra las variables y métodos utilizados en la clase HomeView. Esta clase será mostrada tras introducir los datos correctos en la vista login.
***


***
## *Variables*
```

static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

```
```
  int _selectedIndex = 0;
  
```



***
## *Métodos*

```

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  
```

***
## Reglas de uso

Se implementará en el Scaffold existente de la clase.

***
## Formato del menú

* Se introduce después del código ya implementado.

  ```
  bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home' ,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple[800],
        onTap: _onItemTapped,
      ),
  ```
