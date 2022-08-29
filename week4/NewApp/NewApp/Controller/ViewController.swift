//
//  ViewController.swift
//  NewApp
//
//  Created by 陳建綸 on 2022/8/29.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var stationAddressLabel: UILabel!
    
    var stationManager = StationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureActivityIndicator()
        configureLabelText()
        
        stationManager.delegate = self
        stationManager.fetchStationInformation()
    }
    
    func configureActivityIndicator() {
        activityIndicator.startAnimating()
    }
    
    func configureLabelText() {
        stationIDLabel.text = ""
        stationNameLabel.text = ""
        stationAddressLabel.text = ""
    }
}

//MARK: - StationManagerDelegate
extension ViewController: StationManagerDelegate {
    
    func updateStation(station: StationData) {
        DispatchQueue.main.async {
            self.stationIDLabel.text = station.stationID
            self.stationNameLabel.text = station.stationName
            self.stationAddressLabel.text = station.stationAddress
            
            self.activityIndicator.stopAnimating()
            self.activityIndicator.hidesWhenStopped = true
        }
    }
    
    
}

