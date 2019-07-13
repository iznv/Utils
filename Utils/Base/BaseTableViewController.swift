//
//  BaseTableViewController.swift
//  Utils
//
//  Created by Ivan Zinovyev on 13/07/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

open class BaseTableViewController<ViewModelType>: BaseViewController<ViewModelType> {
    
    // MARK: - Views
    
    public lazy var tableView: UITableView = {
        let view = UITableView()
        
        view.backgroundColor = .clear
        view.separatorStyle = .none
        view.contentInset = contentInset
        
        return view
    }()
    
    // MARK: - Computed Properties
    
    open var contentInset: UIEdgeInsets {
        return .zero
    }
    
    // MARK: - Life Cycle
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    }
    
    // MARK: - Subviews
    
    override open func addViews() {
        view.addSubview(tableView)
    }
    
    // MARK: - Constraints
    
    override open func configureConstraints() {
        tableView.activate {[
            $0.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            $0.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            $0.topAnchor.constraint(equalTo: view.topAnchor),
            $0.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]}
    }
    
    // MARK: - To Override
    
    open func configureTableView() { }
    
}
