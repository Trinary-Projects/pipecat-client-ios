import Foundation

/// Network connection status update indicating changes to connection state.
public struct RTVINetworkConnectionStatusUpdate {
    /// The type of network connection.
    public let connection: RTVINetworkConnectionType
    
    /// The event type indicating what happened to the connection.
    public let event: RTVINetworkConnectionEventType
    
    public init(connection: RTVINetworkConnectionType, event: RTVINetworkConnectionEventType) {
        self.connection = connection
        self.event = event
    }
}

/// A type of network connection managed by the CallClient.
public enum RTVINetworkConnectionType {
    /// Websocket connection used for sending and receiving call state information.
    case signalling
    
    /// Incoming media stream.
    case recvTransport
    
    /// Outgoing media stream.
    case sendTransport
}

/// Network connection event types.
public enum RTVINetworkConnectionEventType {
    /// The transport has entered a connected state.
    case connected
    
    /// The connection has been interrupted.
    case interrupted
}

