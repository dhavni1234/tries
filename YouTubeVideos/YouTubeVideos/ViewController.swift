//
//  ViewController.swift
//  YouTubeVideos
//
//  Created by Aaron on 31/07/2015.
//  Copyright © 2015 Aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var SearchBar: UISearchBar!
    
    @IBOutlet weak var Webview1: UIWebView!
    @IBOutlet weak var Webview2: UIWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let EmbedCode = "<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/_OBlgSz8sSM?rel=0&amp;controls=0&amp;showinfo=0\" frameborder=\"0\" allowfullscreen></iframe>"
        
        
        Webview1.loadHTMLString(EmbedCode, baseURL: nil)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func searchBarSearchButtonClicked(searchbar: UISearchBar) {
        
        
        searchbar.resignFirstResponder()
        
        let EmbedCode2 = "<iframe width=\"1280\" height=\"720\" src=\"https://www.youtube.com/embed/" + (SearchBar.text!) + "?rel=0&amp;controls=0&amp;showinfo=0\" frameborder=\"0\" allowfullscreen></iframe>"

        Webview2.loadHTMLString(EmbedCode2, baseURL: nil)

        
    }
    
    

}

