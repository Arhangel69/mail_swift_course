import Foundation

protocol IServicesAssembly {
    var userManager: IUserManager { get }
    var userDefaultsManager: IUserDeafaultsManager { get }
    var swipeSelectionManager: ISwipeSelectionManager { get }
}

final class ServicesAssembly: IServicesAssembly {
    
    lazy var userManager: IUserManager = {
        UserManager(firestoreManager: coreAssembly.firestoreManager)
    }()
    
    lazy var userDefaultsManager: IUserDeafaultsManager = {
        UserDefaultsManager()
    }()
    
    lazy var swipeSelectionManager: ISwipeSelectionManager = {
        SwipeSelectionManager(firestoreManager: coreAssembly.firestoreManager)
    }()
    
    private let coreAssembly: ICoreAssembly
    
    init(coreAssembly: ICoreAssembly) {
        self.coreAssembly = coreAssembly
    }
}
