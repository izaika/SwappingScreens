//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Igor Zaika on 8/8/17.
//  Copyright © 2017 Igor Zaika. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func BackBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func loadThirdScreenPressed(_ sender: Any) {
        let songTitle = "Ghost Busters"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }

}
