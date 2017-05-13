//
//  KeyboardBehaviour.swift
//  Leaf Lyft
//
//  Created by developer on 16.03.17.
//  Copyright © 2017 Quality Wolves. All rights reserved.
//

import UIKit

class KeyboardBehaviour: NSObject {
    
    private weak var _view: UIView!
    
    private var _isShowKeyboard = false
    private var _keyBoardHeight: CGFloat = 0.0

    convenience init(_ view: UIView) {
        self.init()
        
        _view = view
    }
    
    
    func addObserver() {
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: .UIKeyboardWillHide, object: nil)
        
    }
    
    deinit{
        
        NotificationCenter.default.removeObserver(self, name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.removeObserver(self, name: .UIKeyboardWillHide, object: nil)
    }
    
    // MARK: - Keyboard
    
    func keyboardWillShow(_ notification: NSNotification) {
        
        if _isShowKeyboard {
            return
        }
        
        _isShowKeyboard = true
        
        let keyboardRect = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as AnyObject).cgRectValue
        
        var selfRect = _view.frame
        
        _keyBoardHeight = keyboardRect?.size.height ?? 0.0
        
        selfRect.size.height -= _keyBoardHeight
        
        UIView.animate(withDuration: 0.25, animations: {
            
            self._view.frame = selfRect
            self._view.layoutIfNeeded()
            
        })
        
    }
    
    func keyboardWillHide(_ notification: NSNotification) {
        
        if !_isShowKeyboard {
            return
        }
        
        _isShowKeyboard = false
        
        var selfRect = _view.frame
        selfRect.size.height += _keyBoardHeight
        
        
        UIView.animate(withDuration: 0.25, animations: {
            
            self._view.frame = selfRect
            self._view.layoutIfNeeded()
            
        })
    }

}
