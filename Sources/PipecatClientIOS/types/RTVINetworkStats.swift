import Foundation

/// Network statistics representing call quality.
public struct RTVINetworkStats {
    /// A lossy, human-readable quality value representing call quality.
    public let quality: Int
    
    /// A threshold value representing call quality.
    public let threshold: RTVINetworkThreshold
    
    /// The previous threshold value, if available.
    public let previousThreshold: RTVINetworkThreshold?
    
    /// Detailed network statistics.
    public let stats: RTVIDetailedNetworkStats
    
    public init(
        quality: Int,
        threshold: RTVINetworkThreshold,
        previousThreshold: RTVINetworkThreshold? = nil,
        stats: RTVIDetailedNetworkStats
    ) {
        self.quality = quality
        self.threshold = threshold
        self.previousThreshold = previousThreshold
        self.stats = stats
    }
}

/// Detailed network statistics including latest metrics and worst packet loss values.
public struct RTVIDetailedNetworkStats {
    /// Latest network statistics.
    public let latest: RTVILatestStatistics
    
    /// Worst video receive packet loss percentage.
    public let worstVideoReceivePacketLoss: Double?
    
    /// Worst video send packet loss percentage.
    public let worstVideoSendPacketLoss: Double?
    
    public init(
        latest: RTVILatestStatistics,
        worstVideoReceivePacketLoss: Double? = nil,
        worstVideoSendPacketLoss: Double? = nil
    ) {
        self.latest = latest
        self.worstVideoReceivePacketLoss = worstVideoReceivePacketLoss
        self.worstVideoSendPacketLoss = worstVideoSendPacketLoss
    }
}

/// Latest network statistics snapshot.
public struct RTVILatestStatistics {
    /// Receive bits per second.
    public let receiveBitsPerSecond: Double?
    
    /// Send bits per second.
    public let sendBitsPerSecond: Double?
    
    /// Timestamp of the statistics snapshot.
    public let timestamp: Int64?
    
    /// Video receive bits per second.
    public let videoRecvBitsPerSecond: Double?
    
    /// Video send bits per second.
    public let videoSendBitsPerSecond: Double?
    
    /// Video receive packet loss percentage.
    public let videoRecvPacketLoss: Double?
    
    /// Video send packet loss percentage.
    public let videoSendPacketLoss: Double?
    
    /// Total receive packet loss percentage.
    public let totalRecvPacketLoss: Double?
    
    /// Total send packet loss percentage.
    public let totalSendPacketLoss: Double?
    
    public init(
        receiveBitsPerSecond: Double? = nil,
        sendBitsPerSecond: Double? = nil,
        timestamp: Int64? = nil,
        videoRecvBitsPerSecond: Double? = nil,
        videoSendBitsPerSecond: Double? = nil,
        videoRecvPacketLoss: Double? = nil,
        videoSendPacketLoss: Double? = nil,
        totalRecvPacketLoss: Double? = nil,
        totalSendPacketLoss: Double? = nil
    ) {
        self.receiveBitsPerSecond = receiveBitsPerSecond
        self.sendBitsPerSecond = sendBitsPerSecond
        self.timestamp = timestamp
        self.videoRecvBitsPerSecond = videoRecvBitsPerSecond
        self.videoSendBitsPerSecond = videoSendBitsPerSecond
        self.videoRecvPacketLoss = videoRecvPacketLoss
        self.videoSendPacketLoss = videoSendPacketLoss
        self.totalRecvPacketLoss = totalRecvPacketLoss
        self.totalSendPacketLoss = totalSendPacketLoss
    }
}

/// Represents network quality thresholds based on packet loss.
public enum RTVINetworkThreshold {
    /// Represents that the network has reached a good threshold of packet loss.
    case Good
    
    /// Represents that the network has reached a low threshold of packet loss.
    case Low
    
    /// Represents that the network has reached a very low threshold of packet loss.
    case VeryLow
}

