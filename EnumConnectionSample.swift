    // Program to check Connection Status
    
    enum ConnectionStatus  
    {  
        case Unknown  
        case Disconnected  
        case Connecting  
        case Connected  
    }  
    var connectionStatus = ConnectionStatus.Connecting  
    connectionStatus = .Connected  
    switch connectionStatus {  
        case .Disconnected:  
        print("Disconnected")  
        case .Connecting:  
        print("Connecting")  
        case .Connected:  
        print("Connected")  
        default:  
        print("Unknown Status")  
    }  
