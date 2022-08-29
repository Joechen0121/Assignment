//
//  StationManager.swift
//  NewApp
//
//  Created by 陳建綸 on 2022/8/29.
//

import Foundation

protocol StationManagerDelegate {
    func updateStation(station: StationData)
}

struct StationManager {
    
    let url: String = "https://stations-98a59.firebaseio.com/practice.json"
    
    var delegate: StationManagerDelegate?
    
    func fetchStationInformation() {
        performRequest(with: url)
    }
    
    func performRequest(with urlString: String) {
        
        if let url = URL(string: urlString) {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: request) { (data, response, error) in
                if error != nil {
                    fatalError("Error")
                }
                if let safeData = data {
                    if let stationInformation = self.parseJSON(safeData){
                        self.delegate?.updateStation(station: stationInformation)
                    }
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(_ stationData: Data) -> StationData? {
        let decoder = JSONDecoder()
        
        do {
            let decodedData = try decoder.decode(StationData.self, from: stationData)
            let id = decodedData.stationID
            let name = decodedData.stationName
            let address = decodedData.stationAddress
            
            let station = StationData(stationID: id, stationName: name, stationAddress: address)
            return station
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
}
