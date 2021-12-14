//
//  FilmsViewController.swift
//  FilmsProj
//
//  Created by smilegop on 03.12.2021.
//

import UIKit

class FilmsViewController: UIViewController {
 

    @IBOutlet weak var tableView: UITableView!
    let films = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self

        configure()

    }

    private func configure() {

    

 tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//                self.tableView.backgroundColor = .orange
    }

}

extension FilmsViewController : UITableViewDelegate {
    func tableView( tableview: UITableView, didSelectRowAt indexPath: IndexPath) {
     print("you tapped me!")
    }
}

private func feachFilm(albumName: String) {
    let urlString = "https://api.themoviedb.org/3/genre/movie/list?api_key=62a953b490fa3d699db0898ed1abb0ef"
    NetworkDataFetch.shared.fetchMovie(urlString: urlString) { Model, error in
        if error == nil {
            
        } else {
            print(error!.localizedDescription)
        }
    }
}

extension FilmsViewController : UITableViewDataSource {

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int {
        return 10
    }

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
}




