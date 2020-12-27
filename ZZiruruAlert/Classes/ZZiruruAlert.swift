//
//  ZZiruruAlert.swift
//  ZZiruruAlert
//
//  Created by 김지혜 on 2020/12/27.
//

import UIKit

@available(iOS 14.0, *)
open class ZZiruruAlert: UIView {
    private var contentView: UIView!
    private var titleLabel: UILabel!
    private var lineView: UIView!
    private var confirmButton: UIButton!
    
    private var titleText: String?
    private var confirmText: String?
    private var completion: (() -> Void)?
    
    public convenience init(title: String, confirm: String, completion: (() -> Void)?) {
        self.init(frame: CGRect.zero)
        
        self.titleText = title
        self.confirmText = confirm
        self.completion = completion
    }
    
    override private init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView = UIView()
        titleLabel = UILabel()
        lineView = UIView()
        confirmButton = UIButton(type: .custom)
        
        // 코드로 만들면 당연히 false 가 기본으로 알고있는데 아닝가?!
        self.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        lineView.translatesAutoresizingMaskIntoConstraints = false
        confirmButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func setAttribute() {
        self.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        
        contentView.layer.cornerRadius = 14.0
        contentView.backgroundColor = .white
        lineView.backgroundColor = .lightGray
        confirmButton.setTitleColor(.blue, for: .normal)
        
        titleLabel.text = titleText ?? "Title"
        confirmButton.setTitle(confirmText ?? "confirm", for: .normal)
        
        confirmButton.addTarget(self, action: #selector(confirmAction), for: .touchUpInside)
    }

    open func show(in superview: UIView) {
        setAttribute()
        
        superview.addSubview(self)
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: superview.topAnchor),
            self.bottomAnchor.constraint(equalTo: superview.bottomAnchor),
            self.leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            self.trailingAnchor.constraint(equalTo: superview.trailingAnchor)
        ])
        
        self.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            contentView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 150.0),
            contentView.widthAnchor.constraint(equalToConstant: 270.0)
        ])
        
        contentView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 50.0)
        ])
        
        contentView.addSubview(lineView)
        NSLayoutConstraint.activate([
            lineView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            lineView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            lineView.heightAnchor.constraint(equalToConstant: 0.5)
        ])
        
        contentView.addSubview(confirmButton)
        NSLayoutConstraint.activate([
            confirmButton.topAnchor.constraint(equalTo: lineView.bottomAnchor),
            confirmButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            confirmButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            confirmButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    @objc
    private func confirmAction() {
        self.removeFromSuperview()
        completion?()
    }
}
