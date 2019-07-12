//
//  BaseViewController.swift
//  Utils
//
//  Created by Ivan Zinovyev on 12/07/2019.
//  Copyright © 2019 Ivan Zinovyev. All rights reserved.
//

open class BaseViewController<ViewModelType>: UIViewController {
    
    public let viewModel: ViewModelType
    
    // MARK: - Init
    
    public init(viewModel: ViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    // MARK: - To Override
    
    open func addViews() { }
    
    open func configureConstraints() { }
    
    open func configureAppearance() {
        view.backgroundColor = .white
    }
    
}

// MARK: - Initialization

extension BaseViewController {
    
    func initialize() {
        addViews()
        configureConstraints()
        configureAppearance()
    }
    
}
