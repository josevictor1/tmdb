//
//  HorizontalPagedViewController.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 23/06/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import UIKit

class HorizontalPagedViewController: UIPageViewController {

    var pages: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpPageDataSource()
    }
    
    private func setUpPageDataSource() {
        dataSource = self
    }
    
}

extension HorizontalPagedViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return nil
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return nil
    }
}
