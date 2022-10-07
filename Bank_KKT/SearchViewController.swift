//
//  SearchViewController.swift
//  Bank_KKT
//
//  Created by Lia AN on 2022/10/05.
//

import UIKit

class SearchViewController: UIViewController {
    
    let data = ["펀드 수익률 조회", "펀드 환매 신청내역", "펀드 가입 안내", "펀드찾기/매수", "펀드 매도"]
    var filteredData: [String]!
    

    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filteredData = data
        
        tableView.delegate = self
        tableView.dataSource = self
        
        searchBar.delegate = self
       
    }
    


}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = filteredData[indexPath.row]
        return cell
    }
    
        
    }
    

extension SearchViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = []
        
        if searchText == "" {
            filteredData = data
        }
        
        for word in data {
            filteredData.append(word)
            
        }
        self.tableView.reloadData()
    }
}
