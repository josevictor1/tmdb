//
//  HorizontalPagedViewController.swift
//  tmdb
//
//  Created by José Victor Pereira Costa on 23/06/19.
//  Copyright © 2019 José Victor Pereira Costa. All rights reserved.
//

import UIKit

class HorizontalPagedViewController: UIPageViewController {
    
    // MARK: Properties
    private lazy var viewControllersList: [UIViewController] = {
       return [PosterViewController.xibInstance(),
               BackdropViewController.xibInstance()]
    }()
    
    private lazy var customSpine: UIPageControl = {
        return UIPageControl()
    }()
    
    // MARK: Initialization

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpPageDataSource()
        setUpViewControllers()
        setUpCustomSpine()
    }
    
    // MARK: Setup UIPageViewControllerDataSource
    private func setUpPageDataSource() {
        dataSource = self
    }
    
    private func setUpViewControllers() {
        if let firsViewController = viewControllersList.first {
            setViewControllers([firsViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
    }
    
    private func setUpCustomSpine() {
        view.addSubview(customSpine)
        setUpCustomSpineConstraint()
    }
    
    
    private func setUpCustomSpineConstraint() {
        customSpine.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0)
        customSpine.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        customSpine.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 30)
        customSpine.heightAnchor.constraint(equalToConstant: 60)
    }
}

// MARK: - UIPageViewControllerDataSource
extension HorizontalPagedViewController: UIPageViewControllerDataSource {
    
    private func lastViewController(before viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = viewControllersList.firstIndex(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return viewControllersList.last
        }
        
        guard viewControllersList.count > previousIndex else {
            return nil
        }
        
        return viewControllersList[previousIndex]
    }
    
    private func nextViewController(after viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = viewControllersList.firstIndex(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let viewControllersListCount = viewControllersList.count
        
        guard viewControllersListCount != nextIndex else {
            return viewControllersList.first
        }
        
        guard viewControllersListCount > nextIndex else {
            return nil
        }
        
        return viewControllersList[nextIndex]
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return viewControllersList.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let viewController = viewControllers?.first,
              let index = viewControllersList.firstIndex(of: viewController) else {
            return 0
        }
        
        return index
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return lastViewController(before: viewController)
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return nextViewController(after: viewController)
    }
}
