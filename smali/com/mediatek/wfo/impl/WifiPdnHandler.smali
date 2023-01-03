.class public Lcom/mediatek/wfo/impl/WifiPdnHandler;
.super Landroid/os/Handler;
.source "WifiPdnHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x3e8

.field private static final DEFAULT_MTU_SIZE:I = 0x5dc

.field public static final EVENT_HANDLE_AIRPLANE_MODE:I = 0x480

.field private static final EVENT_INITIALIZE:I = 0x3f7

.field public static final EVENT_ON_NATT_KEEP_ALIVE_CHANGED:I = 0x44f

.field public static final EVENT_ON_WIFI_LOCK:I = 0x481

.field public static final EVENT_ON_WIFI_MONITORING_THRESHOLD_CHANGED:I = 0x44d

.field public static final EVENT_ON_WIFI_PDN_ACTIVATE:I = 0x44e

.field public static final EVENT_ON_WIFI_PING_REQUEST:I = 0x47e

.field private static final EVENT_RADIO_AVAILABLE:I = 0x3ed

.field private static final EVENT_RETRY_CHECK_IF_START_WIFI_SCAN:I = 0x3f2

.field private static final EVENT_RETRY_INIT:I = 0x3f0

.field private static final EVENT_RETRY_UPDATE_LAST_RSSI:I = 0x3f3

.field private static final EVENT_RETRY_UPDATE_WIFI_CONNTECTED_INFO:I = 0x3f1

.field public static final EVENT_SET_NATT_STATUS:I = 0x3ef

.field private static final EVENT_SET_WIFI_ASSOC:I = 0x3eb

.field private static final EVENT_SET_WIFI_ENABLED:I = 0x3ea

.field private static final EVENT_SET_WIFI_IP_ADDR:I = 0x3ec

.field public static final EVENT_SET_WIFI_PING_RESULT:I = 0x47f

.field private static final EVENT_SET_WIFI_SIGNAL_STRENGTH:I = 0x3e9

.field private static final EVENT_SET_WIFI_UE_MAC:I = 0x3f6

.field private static final EVENT_WIFI_NETWORK_STATE_CHANGE:I = 0x3e8

.field private static final EVENT_WIFI_SCAN:I = 0x3ee

.field private static final EVENT_WIFI_SCAN_AVAILABLE:I = 0x3f4

.field private static final EVENT_WIFI_STATE_CHANGE:I = 0x3f5

.field private static final EWIFIEN_AP_MODE_STATE:I = 0x8

.field private static final EWIFIEN_CAUSE:I = 0x1

.field private static final EWIFIEN_NEED_SEND_AP_MODE:I = 0x10

.field private static final EWIFIEN_NEED_SEND_WIFI_ENABLED:I = 0x4

.field private static final EWIFIEN_WIFI_ENABLED_STATE:I = 0x2

.field private static final EXTRA_WFC_STATUS_KEY:Ljava/lang/String; = "wfc_status"

.field private static final MTK_KEY_WOS_SUPPORT_WFC_IN_FLIGHTMODE:Ljava/lang/String; = "wos_flight_mode_support_bool"

.field private static final NEED_DEFER:I = 0x1

.field private static final NONE_SSID:Ljava/lang/String; = "<unknown ssid>"

.field private static final NO_NEED_DEFER:I = 0x0

.field private static final PROPERTY_MIMS_SUPPORT:Ljava/lang/String; = "persist.vendor.mims_support"

.field private static final PROPERTY_WFC_ENABLE:Ljava/lang/String; = "persist.vendor.mtk.wfc.enable"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final RESPONSE_SET_NATT_KEEP_ALIVE_STATUS:I = 0x4b4

.field private static final RESPONSE_SET_WIFI_ASSOC:I = 0x4b2

.field private static final RESPONSE_SET_WIFI_ENABLED:I = 0x4b0

.field private static final RESPONSE_SET_WIFI_IP_ADDR:I = 0x4b3

.field private static final RESPONSE_SET_WIFI_PING_RESULT:I = 0x4b5

.field private static final RESPONSE_SET_WIFI_SIGNAL_LEVEL:I = 0x4b1

.field private static final RESPONSE_SET_WIFI_UE_MAC:I = 0x4b6

.field private static final RETRY_TIMEOUT:I = 0xbb8

.field public static final SNR_UNKNOWN:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "WifiPdnHandler"

.field private static final TELDBG:Z

.field private static final USR_BUILD:Z

.field private static final WFC_NOTIFY_GO:I = 0x2

.field private static final WFC_REQUEST_PARTIAL_SCAN:Ljava/lang/String; = "com.mediatek.intent.action.WFC_REQUEST_PARTIAL_SCAN"

.field private static final WFC_STATUS_CHANGED:Ljava/lang/String; = "com.mediatek.intent.action.WFC_STATUS_CHANGED"

.field private static final WIFI_IF_NAME:Ljava/lang/String; = "wlan0"

.field private static final WIFI_SCAN_DELAY:I = 0xbb8

.field private static final WIFI_STATE_UI_DISABLING:I = 0x26ac

.field private static mWifiUeMac:Ljava/lang/String;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDeferredNotificationToWifi:Z

.field private mDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mHasWiFiDisabledPending:Z

.field private mIfName:Ljava/lang/String;

.field private mIsAirplaneModeChange:Z

.field private mIsAirplaneModeOn:Z

.field private mIsWifiConnected:Z

.field private mIsWifiEnabled:Z

.field private mLastRssi:I

.field private mLock:Ljava/lang/Object;

.field private mModemReqWifiLock:[Z

.field private mMtu:I

.field private mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

.field private mNetwork:Landroid/net/Network;

.field private mOldWifiConnectedFromNetworkInfo:Z

.field private mPacketKeepAliveProcessor:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

.field private mPendingMsgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mPingDns:Lcom/mediatek/wfo/impl/PingDns;

.field private mRadioState:I

.field private mRatType:[I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRssiChange:Z

.field private mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

.field private mSimCount:I

.field private mSsid:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

.field private mWifiApMac:Ljava/lang/String;

.field private mWifiIpv4Address:Ljava/lang/String;

.field private mWifiIpv4Gateway:Ljava/lang/String;

.field private mWifiIpv4PrefixLen:I

.field private mWifiIpv6Address:Ljava/lang/String;

.field private mWifiIpv6Gateway:Ljava/lang/String;

.field private mWifiIpv6PrefixLen:I

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiLockCount:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiPdnExisted:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 126
    const-string v0, "02:00:00:00:00:00"

    sput-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    .line 210
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 211
    const-string v3, "userdebug"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->USR_BUILD:Z

    .line 212
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->TELDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simCount"    # I
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "mwiRil"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 640
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 123
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    .line 124
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldWifiConnectedFromNetworkInfo:Z

    .line 125
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    .line 131
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    .line 132
    iput v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    .line 133
    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    .line 134
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    .line 135
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    .line 136
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    .line 138
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    .line 139
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 140
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 141
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    .line 142
    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    .line 227
    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mNetwork:Landroid/net/Network;

    .line 229
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRadioState:I

    .line 589
    new-instance v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler$1;-><init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 641
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    .line 642
    iput p2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    .line 643
    iput-object p4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 645
    const/16 v0, 0x3f7

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 646
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 647
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 96
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 96
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldWifiConnectedFromNetworkInfo:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/wfo/impl/WifiPdnHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .param p1, "x1"    # Z

    .line 96
    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mOldWifiConnectedFromNetworkInfo:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 96
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 96
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 96
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 96
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .param p1, "x1"    # Landroid/net/Network;

    .line 96
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/wfo/impl/WifiPdnHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 96
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/wfo/impl/WifiPdnHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .param p1, "x1"    # I

    .line 96
    iput p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    return p1
.end method

.method static synthetic access$702(Lcom/mediatek/wfo/impl/WifiPdnHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .param p1, "x1"    # Z

    .line 96
    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    return p1
.end method

.method private allowWfcInAirplaneMode()Z
    .locals 6

    .line 1204
    const/4 v0, 0x1

    .line 1205
    .local v0, "wfcInApMode":Z
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isAirPlaneMode()Z

    move-result v1

    .line 1206
    .local v1, "isAirplaneModeOn":Z
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    const/4 v3, 0x1

    if-eq v2, v1, :cond_0

    .line 1207
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 1208
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 1210
    :cond_0
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eqz v2, :cond_3

    .line 1211
    const-string v2, "persist.vendor.mims_support"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "wos_flight_mode_support_bool"

    if-gt v2, v3, :cond_1

    .line 1212
    nop

    .line 1214
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMainCapabilityPhoneId()I

    move-result v2

    .line 1212
    invoke-direct {p0, v4, v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getBooleanCarrierConfig(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_1

    .line 1216
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v2, v5, :cond_3

    .line 1217
    invoke-direct {p0, v4, v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getBooleanCarrierConfig(Ljava/lang/String;IZ)Z

    move-result v0

    .line 1219
    if-nez v0, :cond_2

    .line 1220
    goto :goto_1

    .line 1216
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1226
    .end local v2    # "i":I
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowWfcInAirplaneMode: mIsAirplaneModeOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", wfcInApMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1228
    return v0
.end method

.method private broadcastWfcStatusIntent(I)V
    .locals 2
    .param p1, "wfcStatus"    # I

    .line 1771
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    const/16 v1, 0x839

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1772
    return-void
.end method

.method private checkIfstartWifiScan(Z)V
    .locals 4
    .param p1, "scanImmediately"    # Z

    .line 1378
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v0

    .line 1380
    .local v0, "wifiPdnExisted":Z
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    const/16 v2, 0x3ee

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 1382
    if-eqz p1, :cond_1

    .line 1383
    const-string v1, "call WifiManager.startScan()"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1384
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 1385
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 1386
    return-void

    .line 1388
    :cond_0
    const-string v1, "WifiPdnHandler"

    const-string v2, "checkIfstartWifiScan(): WifiManager null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const/16 v1, 0x3f2

    .line 1390
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1389
    invoke-virtual {p0, v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1391
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1392
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    monitor-exit v3

    .line 1394
    return-void

    .line 1393
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1398
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1399
    const-string v1, "start 3s delay to trigger wifi scan"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1400
    nop

    .line 1401
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    .line 1400
    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1404
    :cond_2
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->removeMessages(I)V

    .line 1406
    :cond_3
    :goto_0
    return-void
.end method

.method private checkInvalidSimIdx(ILjava/lang/String;)Z
    .locals 1
    .param p1, "simIdx"    # I
    .param p2, "dbgMsg"    # Ljava/lang/String;

    .line 1576
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1580
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1577
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1578
    const/4 v0, 0x1

    return v0
.end method

.method private checkRadioPowerState()V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 479
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 483
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getRadioPowerState()I

    move-result v0

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRadioState:I

    goto :goto_0

    .line 485
    :cond_1
    const-string v0, "mTelephonyManager is null, keep the original RadioState"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 488
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkRadioPowerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRadioState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method private generateWifiEnableCause(ZZZZZ)I
    .locals 3
    .param p1, "needAPMode"    # Z
    .param p2, "apMode"    # Z
    .param p3, "needWifiEnabled"    # Z
    .param p4, "wifiEnabled"    # Z
    .param p5, "bCause"    # Z

    .line 1137
    const/4 v0, 0x0

    .line 1139
    .local v0, "cause":I
    if-eqz p1, :cond_0

    .line 1140
    or-int/lit8 v0, v0, 0x10

    .line 1142
    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    or-int/2addr v0, v2

    .line 1144
    if-eqz p3, :cond_2

    .line 1145
    or-int/lit8 v0, v0, 0x4

    .line 1147
    :cond_2
    if-eqz p4, :cond_3

    const/4 v1, 0x2

    :cond_3
    or-int/2addr v0, v1

    .line 1149
    or-int/2addr v0, p5

    .line 1151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateWifiEnableCause(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1152
    return v0
.end method

.method private getAirplaneModeFromSettings()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 461
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 463
    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 464
    .local v0, "value":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAirplaneModeFromSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 465
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkRadioPowerState()V

    .line 466
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isEccInProgress()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRadioState:I

    if-ne v2, v1, :cond_2

    .line 467
    :cond_1
    const-string v1, "Disable airplane mode after get from setting if radio is on"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    const/4 v0, 0x0

    .line 470
    :cond_2
    return v0

    .line 471
    .end local v0    # "value":Z
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "WifiPdnHandler"

    const-string v2, "Can not get AIRPLANE_MODE_ON from provider."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    throw v0
.end method

.method private getBooleanCarrierConfig(Ljava/lang/String;IZ)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "defaultValue"    # Z

    .line 1232
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1233
    const-string v0, "WifiPdnHandler"

    const-string v1, "getBooleanCarrierConfig fail, mContext = null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1237
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getSubId(I)I

    move-result v1

    .line 1238
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBooleanCarrierConfig: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1239
    const/4 v2, 0x0

    .line 1240
    .local v2, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_1

    .line 1241
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1243
    :cond_1
    const/4 v3, 0x1

    .line 1244
    .local v3, "ret":Z
    if-eqz v2, :cond_2

    .line 1245
    invoke-virtual {v2, p1, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_0

    .line 1248
    :cond_2
    const-string v4, "getBooleanCarrierConfig: get from default config"

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1249
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v4, p1, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1251
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBooleanCarrierConfig sub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1252
    return v3
.end method

.method private getMainCapabilityPhoneId()I
    .locals 2

    .line 1648
    const-string v0, "persist.vendor.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 1649
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1650
    :cond_0
    const/4 v0, -0x1

    .line 1652
    :cond_1
    return v0
.end method

.method private getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 2

    .line 1656
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1658
    .local v0, "phoneId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1659
    const/4 v1, 0x0

    return-object v1

    .line 1661
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getSubId(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 1266
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1267
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 1268
    .local v1, "subId":I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1269
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 1271
    :cond_0
    return v1
.end method

.method public static getUeWlanMacAddr()Ljava/lang/String;
    .locals 1

    .line 1666
    sget-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    return-object v0
.end method

.method private handleAirplaneMode()V
    .locals 4

    .line 444
    const/4 v0, 0x0

    .line 446
    .local v0, "isAirplaneModeOn":Z
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getAirplaneModeFromSettings()Z

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 449
    goto :goto_0

    .line 447
    :catch_0
    move-exception v1

    .line 448
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiPdnHandler"

    const-string v3, "Can not get AIRPLANE_MODE_ON from provider."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAirplaneMode mIsAirplaneModeOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 453
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eq v1, v0, :cond_0

    .line 454
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 455
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 457
    :cond_0
    return-void
.end method

.method private handleRetry(ILandroid/os/AsyncResult;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "result"    # Landroid/os/AsyncResult;

    .line 501
    return-void
.end method

.method private handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;I)V
    .locals 5
    .param p1, "source"    # Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;
    .param p2, "state"    # I

    .line 838
    sget-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->$SwitchMap$com$mediatek$wfo$impl$WifiPdnHandler$WifiLockSource:[I

    invoke-virtual {p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Warning: mWifiLockCount: "

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 878
    :cond_0
    const/16 v0, 0x26ac

    if-ne p2, v0, :cond_2

    .line 879
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    if-nez v0, :cond_a

    .line 880
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    iput-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    goto/16 :goto_0

    .line 883
    :cond_1
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    goto/16 :goto_0

    .line 886
    :cond_2
    if-ne p2, v4, :cond_4

    .line 888
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    if-eqz v0, :cond_3

    .line 889
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    .line 890
    :cond_3
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    if-eqz v0, :cond_a

    .line 891
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    .line 892
    const-string v0, "Wi-Fi fwk automaticlly disable defer Wi-Fi off process due to timeout"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_a

    .line 894
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 896
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 897
    if-lez v0, :cond_a

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 902
    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_a

    .line 904
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    if-nez v0, :cond_a

    .line 905
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 906
    invoke-direct {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    .line 907
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_5

    .line 908
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 909
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 912
    :cond_5
    iput-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    goto :goto_0

    .line 841
    :cond_6
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    if-nez v0, :cond_8

    .line 842
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 843
    invoke-direct {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    .line 844
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_7

    .line 845
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 846
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 849
    :cond_7
    iput-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    .line 853
    :cond_8
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    if-eqz v0, :cond_9

    .line 854
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-nez v0, :cond_9

    .line 855
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    .line 856
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    .line 860
    :cond_9
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    if-eqz v0, :cond_a

    .line 861
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v0

    if-nez v0, :cond_a

    .line 862
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    .line 863
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->broadcastWfcStatusIntent(I)V

    .line 864
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_a

    .line 865
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 867
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    .line 868
    if-lez v0, :cond_a

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLockCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 921
    :cond_a
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new handleWifiDefferOff(): WifiLockSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mHasWiFiDisabledPending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mHasWiFiDisabledPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isWifiDeferOffNeeded(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiDeferOffNeeded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDeferredNotificationToWifi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDeferredNotificationToWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 921
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 928
    return-void
.end method

.method private handleWifiStateChange(I)V
    .locals 4
    .param p1, "wifiState"    # I

    .line 407
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 408
    const-string v0, "Unexpected error, mWifiManager is null!"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 409
    const/16 v0, 0x3f5

    invoke-virtual {p0, v0, p1, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 410
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    monitor-exit v2

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 416
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWifiStateChange wifiState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 419
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getAirplaneModeFromSettings()Z

    move-result v0

    .line 420
    .local v0, "isAirplaneModeOn":Z
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eq v2, v0, :cond_1

    .line 421
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 422
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 423
    const-string v2, "handleWifiStateChange change due to airplane mode change"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 427
    .end local v0    # "isAirplaneModeOn":Z
    :cond_1
    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiPdnHandler"

    const-string v3, "Can not get AIRPLANE_MODE_ON from provider."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    sget-object v0, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->WIFI_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;I)V

    .line 430
    const/16 v0, 0x26ac

    if-ne p1, v0, :cond_2

    .line 431
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 432
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    goto :goto_1

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 436
    .local v0, "isWifiEnabled":Z
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    if-eq v0, v1, :cond_3

    .line 437
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 438
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 441
    .end local v0    # "isWifiEnabled":Z
    :cond_3
    :goto_1
    return-void
.end method

.method private initWifiManager()V
    .locals 4

    .line 680
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 681
    return-void

    .line 684
    :cond_0
    const-string v0, "WifiPdnHandler"

    const-string v1, "initWifiManager."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 690
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 691
    .local v0, "isWifiEnabled":Z
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    if-eq v0, v2, :cond_2

    .line 692
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 693
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 695
    :cond_2
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v3, "WifiOffloadService-Wifi Lock"

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 696
    if-eqz v2, :cond_3

    .line 697
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 699
    .end local v0    # "isWifiEnabled":Z
    :cond_3
    goto :goto_0

    .line 700
    :cond_4
    const-string v0, "WifiManager null"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 701
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 703
    const/16 v0, 0x3f0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 704
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 705
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    monitor-exit v1

    .line 708
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 706
    .restart local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private initialize()V
    .locals 4

    .line 650
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->initWifiManager()V

    .line 652
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 653
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 654
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {v1, v2}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;-><init>(Landroid/net/ConnectivityManager;)V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    .line 655
    new-instance v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {v1, v2, p0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPacketKeepAliveProcessor:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    .line 658
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    .line 659
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mModemReqWifiLock:[Z

    .line 661
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRatType:[I

    .line 663
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->initialize(I)V

    .line 665
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 668
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 670
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->registerForBroadcast()V

    .line 671
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->registerIndication()V

    .line 673
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setupCallbacksForWifiStatus()V

    .line 676
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 677
    return-void
.end method

.method private isAirPlaneMode()Z
    .locals 3

    .line 1256
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1257
    const-string v0, "WifiPdnHandler"

    const-string v2, "isAirPlaneMode: no context!"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    return v1

    .line 1260
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v0, v1

    .line 1262
    .local v0, "isAirPlaneMode":Z
    return v0
.end method

.method private isEccInProgress()Z
    .locals 3

    .line 1752
    const/4 v0, 0x0

    .line 1753
    .local v0, "isInEcc":Z
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 1754
    .local v1, "tm":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_0

    .line 1755
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result v0

    .line 1757
    :cond_0
    return v0
.end method

.method private isModemReqWifiLock()Z
    .locals 2

    .line 1594
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 1595
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mModemReqWifiLock:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1597
    const/4 v1, 0x1

    return v1

    .line 1594
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1600
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isWifiDeferOffNeeded()Z
    .locals 1

    .line 825
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isModemReqWifiLock()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private maskString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1775
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1776
    return-object p1

    .line 1778
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1779
    .local v1, "maskLength":I
    const-string v2, "*"

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 1780
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1783
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1784
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1786
    .end local v3    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private messageToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 504
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 545
    :pswitch_0
    const-string v0, "RESPONSE_SET_WIFI_PING_RESULT"

    return-object v0

    .line 543
    :pswitch_1
    const-string v0, "RESPONSE_SET_NATT_KEEP_ALIVE_STATUS"

    return-object v0

    .line 541
    :pswitch_2
    const-string v0, "RESPONSE_SET_WIFI_IP_ADDR"

    return-object v0

    .line 539
    :pswitch_3
    const-string v0, "RESPONSE_SET_WIFI_ASSOC"

    return-object v0

    .line 537
    :pswitch_4
    const-string v0, "RESPONSE_SET_WIFI_SIGNAL_LEVEL"

    return-object v0

    .line 535
    :pswitch_5
    const-string v0, "RESPONSE_SET_WIFI_ENABLED"

    return-object v0

    .line 533
    :pswitch_6
    const-string v0, "EVENT_ON_WIFI_LOCK"

    return-object v0

    .line 547
    :pswitch_7
    const-string v0, "EVENT_HANDLE_AIRPLANE_MODE"

    return-object v0

    .line 529
    :pswitch_8
    const-string v0, "EVENT_SET_WIFI_PING_RESULT"

    return-object v0

    .line 531
    :pswitch_9
    const-string v0, "EVENT_ON_WIFI_PING_REQUEST"

    return-object v0

    .line 523
    :pswitch_a
    const-string v0, "EVENT_ON_NATT_KEEP_ALIVE_CHANGED"

    return-object v0

    .line 521
    :pswitch_b
    const-string v0, "EVENT_ON_WIFI_PDN_ACTIVATE"

    return-object v0

    .line 519
    :pswitch_c
    const-string v0, "EVENT_ON_WIFI_MONITORING_THRESHOLD_CHANGED"

    return-object v0

    .line 559
    :pswitch_d
    const-string v0, "EVENT_WIFI_STATE_CHANGE"

    return-object v0

    .line 557
    :pswitch_e
    const-string v0, "EVENT_WIFI_SCAN_AVAILABLE"

    return-object v0

    .line 555
    :pswitch_f
    const-string v0, "EVENT_RETRY_UPDATE_LAST_RSSI"

    return-object v0

    .line 553
    :pswitch_10
    const-string v0, "EVENT_RETRY_CHECK_IF_START_WIFI_SCAN"

    return-object v0

    .line 551
    :pswitch_11
    const-string v0, "EVENT_RETRY_UPDATE_WIFI_CONNTECTED_INFO"

    return-object v0

    .line 549
    :pswitch_12
    const-string v0, "EVENT_RETRY_INIT"

    return-object v0

    .line 527
    :pswitch_13
    const-string v0, "EVENT_SET_NATT_STATUS"

    return-object v0

    .line 525
    :pswitch_14
    const-string v0, "EVENT_WIFI_SCAN"

    return-object v0

    .line 517
    :pswitch_15
    const-string v0, "EVENT_RADIO_AVAILABLE"

    return-object v0

    .line 515
    :pswitch_16
    const-string v0, "EVENT_SET_WIFI_IP_ADDR"

    return-object v0

    .line 513
    :pswitch_17
    const-string v0, "EVENT_SET_WIFI_ASSOC"

    return-object v0

    .line 511
    :pswitch_18
    const-string v0, "EVENT_SET_WIFI_ENABLED"

    return-object v0

    .line 509
    :pswitch_19
    const-string v0, "EVENT_SET_WIFI_SIGNAL_STRENGTH"

    return-object v0

    .line 507
    :pswitch_1a
    const-string v0, "EVENT_WIFI_NETWORK_STATE_CHANGE"

    return-object v0

    .line 561
    :cond_0
    const-string v0, "EVENT_INITIALIZE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x47e
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4b0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onNattKeepAliveChanged(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 931
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 932
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 934
    .local v1, "result":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPacketKeepAliveProcessor:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->handleKeepAliveChanged([Ljava/lang/String;)V

    .line 935
    return-void
.end method

.method private onRssiMonitorRequest(II[I)V
    .locals 1
    .param p1, "simId"    # I
    .param p2, "size"    # I
    .param p3, "rssiThresholds"    # [I

    .line 1412
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->registerRssiMonitoring(II[I)V

    .line 1413
    return-void
.end method

.method private onWifiLock(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 1724
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1725
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 1727
    .local v1, "result":[Ljava/lang/String;
    const-string v2, "WifiPdnHandler"

    if-nez v1, :cond_0

    .line 1728
    const-string v3, "onWifiLock(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    return-void

    .line 1731
    :cond_0
    array-length v3, v1

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 1732
    const-string v3, "onWifiLock(): Bad params"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    return-void

    .line 1737
    :cond_1
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    aget-object v6, v1, v5

    .line 1738
    .local v6, "wlanIface":Ljava/lang/String;
    aget-object v7, v1, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1739
    .local v7, "enableLock":I
    aget-object v8, v1, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1740
    .local v8, "simIdx":I
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isModemReqWifiLock()Z

    move-result v9

    .line 1741
    .local v9, "preModemWifiLockState":Z
    iget-object v10, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mModemReqWifiLock:[Z

    if-nez v7, :cond_2

    move v11, v5

    goto :goto_0

    :cond_2
    move v11, v4

    :goto_0
    aput-boolean v11, v10, v8

    .line 1742
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isModemReqWifiLock()Z

    move-result v10

    if-eq v9, v10, :cond_3

    .line 1743
    sget-object v10, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->MODEM_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    invoke-direct {p0, v10, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1748
    .end local v6    # "wlanIface":Ljava/lang/String;
    .end local v7    # "enableLock":I
    .end local v8    # "simIdx":I
    .end local v9    # "preModemWifiLockState":Z
    :cond_3
    goto :goto_1

    .line 1745
    :catch_0
    move-exception v6

    .line 1746
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onWifiLock["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  e:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1746
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private onWifiMonitoringThreshouldChanged(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 743
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 744
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 746
    .local v1, "result":[I
    const-string v2, "WifiPdnHandler"

    if-nez v1, :cond_0

    .line 747
    const-string v3, "onWifiMonitoringThreshouldChanged(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-void

    .line 751
    :cond_0
    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move v3, v5

    .line 752
    .local v3, "enable":Z
    :cond_1
    array-length v4, v1

    .line 753
    .local v4, "length":I
    add-int/lit8 v6, v4, -0x1

    aget v6, v1, v6

    .line 755
    .local v6, "simIdx":I
    if-nez v3, :cond_2

    .line 756
    const-string v2, "Turn off RSSI monitoring"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 757
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiMonitoringProcessor:Lcom/mediatek/wfo/util/RssiMonitoringProcessor;

    invoke-virtual {v2, v6}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->unregisterAllRssiMonitoring(I)V

    .line 758
    return-void

    .line 760
    :cond_2
    aget v7, v1, v5

    .line 761
    .local v7, "count":I
    add-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v5

    if-ge v8, v4, :cond_3

    .line 762
    const-string v5, "onWifiMonitoringThreshouldChanged(): Bad params"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return-void

    .line 765
    :cond_3
    const-string v2, "onWifiMonitoringThreshouldChanged: invalid SIM id"

    invoke-direct {p0, v6, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 766
    return-void

    .line 769
    :cond_4
    new-array v2, v7, [I

    .line 770
    .local v2, "rssi":[I
    const/4 v5, 0x2

    .line 771
    .local v5, "offset":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_5

    .line 772
    add-int v9, v8, v5

    aget v9, v1, v9

    aput v9, v2, v8

    .line 773
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onWifiMonitoringThreshouldChanged(): rssi = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v2, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 771
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 776
    .end local v8    # "i":I
    :cond_5
    invoke-direct {p0, v6, v7, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onRssiMonitorRequest(II[I)V

    .line 779
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateLastRssi()V

    .line 780
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 781
    return-void
.end method

.method private onWifiPdnActivate(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 785
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 786
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 787
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 789
    .local v2, "preWifiPdnExited":Z
    const-string v3, "WifiPdnHandler"

    if-nez v1, :cond_0

    .line 790
    const-string v4, "onWifiPdnActivate(): result is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-void

    .line 793
    :cond_0
    array-length v4, v1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 794
    const-string v4, "onWifiPdnActivate(): Bad params"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return-void

    .line 797
    :cond_1
    const/4 v3, 0x0

    aget v4, v1, v3

    .line 798
    .local v4, "pdnCount":I
    const/4 v6, 0x1

    aget v7, v1, v6

    .line 800
    .local v7, "simIdx":I
    const-string v8, "onWifiPdnActivate(): invalid SIM id"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 801
    return-void

    .line 803
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v2

    .line 805
    const-string v8, "persist.vendor.mims_support"

    invoke-static {v8, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ge v8, v5, :cond_5

    .line 806
    const-string v5, "MIMS does not support, sync up pdn status to all slots."

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 807
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v5, v8, :cond_4

    .line 808
    iget-object v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    if-lez v4, :cond_3

    move v9, v6

    goto :goto_1

    :cond_3
    move v9, v3

    :goto_1
    aput-boolean v9, v8, v5

    .line 807
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v5    # "i":I
    :cond_4
    goto :goto_3

    .line 811
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MIMS supported, update pdn status to specific slot["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 812
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    if-lez v4, :cond_6

    goto :goto_2

    :cond_6
    move v6, v3

    :goto_2
    aput-boolean v6, v5, v7

    .line 816
    :goto_3
    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkIfstartWifiScan(Z)V

    .line 818
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v5

    if-eq v2, v5, :cond_7

    .line 820
    sget-object v5, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;->MODEM_STATE_CHANGE:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;

    invoke-direct {p0, v5, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleWifiDefferOff(Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiLockSource;I)V

    .line 822
    :cond_7
    return-void
.end method

.method private onWifiPingRequest(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 1699
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1700
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1702
    .local v1, "result":[I
    const-string v2, "WifiPdnHandler"

    if-nez v1, :cond_0

    .line 1703
    const-string v3, "onWifiPingRequest(): result is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    return-void

    .line 1706
    :cond_0
    array-length v3, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 1707
    const-string v3, "onWifiPingRequest(): Bad params"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    return-void

    .line 1710
    :cond_1
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 1711
    .local v2, "rat":I
    const/4 v3, 0x1

    aget v3, v1, v3

    .line 1713
    .local v3, "simIdx":I
    const-string v4, "onWifiPingRequest(): invalid SIM id"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1714
    return-void

    .line 1717
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWifiPingRequest: rat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", simIdx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1718
    new-instance v4, Lcom/mediatek/wfo/impl/PingDns;

    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3, v2, p0}, Lcom/mediatek/wfo/impl/PingDns;-><init>(Landroid/content/Context;IILandroid/os/Handler;)V

    iput-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPingDns:Lcom/mediatek/wfo/impl/PingDns;

    .line 1719
    invoke-virtual {v4}, Lcom/mediatek/wfo/impl/PingDns;->pingWifiGateway()V

    .line 1720
    return-void
.end method

.method private registerForBroadcast()V
    .locals 3

    .line 715
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 716
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 717
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 718
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 719
    const-string v1, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 720
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 721
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 722
    return-void
.end method

.method private registerIndication()V
    .locals 4

    .line 725
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v0, v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x44d

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerRssiThresholdChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 728
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x44e

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPdnActivated(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 730
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x44f

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerNattKeepAliveChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 732
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x47e

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiPingRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 735
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0x481

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerWifiLock(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private setNattKeepAliveStatus(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 1348
    const/16 v0, 0x4b4

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1349
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 1350
    .local v9, "config":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    .line 1351
    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->isEnabled()Z

    move-result v3

    .line 1352
    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->getSrcIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->getSrcPort()I

    move-result v5

    .line 1353
    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->getDstIp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->getDstPort()I

    move-result v7

    .line 1350
    const-string v2, "wlan0"

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/wfo/ril/MwiRIL;->setNattKeepAliveStatus(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V

    .line 1354
    return-void
.end method

.method private setWifiAssoc()V
    .locals 11

    .line 1286
    const/16 v0, 0x4b2

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1287
    .local v0, "result":Landroid/os/Message;
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    .line 1288
    .local v1, "mtu":I
    if-nez v1, :cond_0

    .line 1290
    const/16 v1, 0x5dc

    move v9, v1

    goto :goto_0

    .line 1288
    :cond_0
    move v9, v1

    .line 1292
    .end local v1    # "mtu":I
    .local v9, "mtu":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiAssoc() ifName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " associated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ssid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    .line 1293
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " apMac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mtu = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1292
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1294
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    .line 1295
    .local v1, "isWifiConnected":Z
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1296
    const/4 v1, 0x0

    move v10, v1

    goto :goto_1

    .line 1295
    :cond_1
    move v10, v1

    .line 1298
    .end local v1    # "isWifiConnected":Z
    .local v10, "isWifiConnected":Z
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    sget-object v7, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    const-string v2, "wlan0"

    move v3, v10

    move v6, v9

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiAssociated(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1301
    return-void
.end method

.method private setWifiEnabled()V
    .locals 9

    .line 1156
    const/16 v0, 0x4b0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1157
    .local v0, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isEccInProgress()Z

    move-result v1

    .line 1158
    .local v1, "isInEcc":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiEnabled(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsAirplaneModeOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isEccInProgress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1162
    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 1163
    .local v2, "wifiEnable":Z
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->allowWfcInAirplaneMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1164
    const-string v3, "allowWfcInAirplaneMode: false"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1165
    const/4 v2, 0x0

    .line 1168
    :cond_0
    const-string v3, "persist.vendor.mtk.wfc.enable"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-lt v3, v5, :cond_1

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 1169
    move v8, v5

    goto :goto_0

    :cond_1
    move v8, v4

    .line 1170
    .local v8, "bCause":Z
    :goto_0
    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    const/4 v6, 0x1

    move-object v3, p0

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->generateWifiEnableCause(ZZZZZ)I

    move-result v3

    .line 1172
    .local v3, "cause":I
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v4

    .line 1173
    nop

    .line 1172
    const-string v5, "wlan0"

    invoke-virtual {v4, v5, v2, v3, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiEnabled(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1174
    return-void
.end method

.method private setWifiEnabledWithSyncAPMode()V
    .locals 11

    .line 1177
    const/16 v0, 0x4b0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1178
    .local v0, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isEccInProgress()Z

    move-result v1

    .line 1181
    .local v1, "isInEcc":Z
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getAirplaneModeFromSettings()Z

    move-result v2

    .line 1182
    .local v2, "isAirplaneModeOn":Z
    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eq v3, v2, :cond_0

    .line 1183
    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 1184
    const-string v3, "setWifiEnabledWithSyncAPMode(): update mIsAirplaneModeOn from settings"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    .end local v2    # "isAirplaneModeOn":Z
    :cond_0
    goto :goto_0

    .line 1186
    :catch_0
    move-exception v2

    .line 1187
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "WifiPdnHandler"

    const-string v4, "Can not get AIRPLANE_MODE_ON from provider."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiEnabledWithSyncAPMode(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsAirplaneModeOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isEccInProgress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1194
    const-string v2, "persist.vendor.mtk.wfc.enable"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 1195
    move v10, v4

    goto :goto_1

    :cond_1
    move v10, v3

    .line 1197
    .local v10, "bCause":Z
    :goto_1
    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->generateWifiEnableCause(ZZZZZ)I

    move-result v2

    .line 1199
    .local v2, "cause":I
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v3

    .line 1200
    iget-boolean v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 1199
    const-string v5, "wlan0"

    invoke-virtual {v3, v5, v4, v2, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiEnabled(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1201
    return-void
.end method

.method private setWifiIpAddress()V
    .locals 14

    .line 1304
    const/16 v0, 0x4b3

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1305
    .local v0, "result":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiIpAddr() ifName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ipv4Addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ipv6Addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 1306
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ipv4PrefixLen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ipv6PrefixLen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1305
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1309
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1310
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    .line 1311
    .local v12, "dnsCount":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v1

    .line 1313
    .local v13, "dnsServers":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 1314
    .local v2, "address":Ljava/net/InetAddress;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1315
    const-string v3, ","

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    :cond_0
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 1318
    .local v3, "dnsServerAddress":Ljava/lang/String;
    const-string v4, "\""

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiIpAddress(): dnsServerAddress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1322
    .end local v2    # "address":Ljava/net/InetAddress;
    goto :goto_0

    .line 1324
    .end local v3    # "dnsServerAddress":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    iget v6, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    .line 1331
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1324
    const-string v2, "wlan0"

    move v9, v12

    move-object v11, v0

    invoke-virtual/range {v1 .. v11}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiIpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1332
    .end local v12    # "dnsCount":I
    .end local v13    # "dnsServers":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 1333
    :cond_2
    const-string v1, "WifiPdnHandler"

    const-string v2, "setWifiIpAddress(): mDnsServers = null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    iget v6, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    iget-object v7, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    const/4 v9, 0x0

    const-string v2, "wlan0"

    const-string v10, "\"\""

    move-object v11, v0

    invoke-virtual/range {v1 .. v11}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiIpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 1345
    :goto_1
    return-void
.end method

.method private setWifiPingResult(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1357
    const/16 v0, 0x4b5

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1361
    .local v0, "result":Landroid/os/Message;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/mediatek/wfo/impl/PingData;

    .line 1362
    .local v1, "data":Lcom/mediatek/wfo/impl/PingData;
    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/PingData;->getPingLatency()D

    move-result-wide v2

    double-to-int v2, v2

    .line 1363
    .local v2, "latency":I
    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/PingData;->getPacketLoss()I

    move-result v3

    .line 1364
    .local v3, "pktLoss":I
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1365
    .local v4, "simIdx":I
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 1366
    .local v5, "rat":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWifiPingResult() latency: = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", packetLost: = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1368
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v6

    invoke-virtual {v6, v5, v2, v3, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiPingResult(IIILandroid/os/Message;)V

    .line 1369
    return-void
.end method

.method private setWifiSignalLevel()V
    .locals 4

    .line 1280
    const/16 v0, 0x4b1

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1281
    .local v0, "result":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiSignalLevel(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1282
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    const/16 v3, 0x3c

    invoke-virtual {v1, v2, v3, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWifiSignalLevel(IILandroid/os/Message;)V

    .line 1283
    return-void
.end method

.method private setWifiUeMac()V
    .locals 4

    .line 1372
    const/16 v0, 0x4b6

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1373
    .local v0, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    sget-object v2, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    const-string v3, "wlan0"

    invoke-virtual {v1, v3, v2, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWfcConfig_WifiUeMac(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1374
    return-void
.end method

.method private setupCallbacksForWifiStatus()V
    .locals 2

    .line 1419
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 1420
    const-string v0, "Unexpected error, mConnectivityManager = null"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1421
    return-void

    .line 1424
    :cond_0
    new-instance v1, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;

    invoke-direct {v1, p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler$2;-><init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1573
    return-void
.end method

.method private updateLastRssi()V
    .locals 3

    .line 1604
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 1605
    const-string v0, "WifiPdnHandler"

    const-string v1, "updateLastRssi(): WifiManager null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const/16 v0, 0x3f3

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1607
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1608
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    monitor-exit v2

    .line 1610
    return-void

    .line 1609
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1613
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1614
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_1

    .line 1615
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    .line 1617
    :cond_1
    return-void
.end method

.method private updateSsidToHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "ssid"    # Ljava/lang/String;

    .line 1620
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1621
    const-string v0, ""

    return-object v0

    .line 1624
    :cond_0
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1625
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1628
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1629
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1630
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 1631
    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, v0, v3

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1635
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private updateWifiConnectedInfo(I)V
    .locals 26
    .param p1, "isConnected"    # I

    .line 938
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    .line 939
    .local v3, "changed":Z
    const/4 v4, 0x0

    .line 941
    .local v4, "ipAddrChanged":Z
    const/4 v0, 0x0

    if-nez v2, :cond_1

    .line 942
    iget-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    if-eqz v5, :cond_0

    .line 943
    invoke-virtual {v5, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->updatedWifiConnectedStatus(Z)V

    .line 946
    :cond_0
    iget-boolean v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v5, :cond_22

    .line 947
    iput-boolean v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    .line 948
    const-string v5, ""

    iput-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    .line 949
    const-string v5, ""

    iput-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    .line 950
    const-string v5, ""

    iput-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 951
    const-string v5, ""

    iput-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    .line 952
    const-string v5, ""

    iput-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    .line 953
    const/4 v5, -0x1

    iput v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    .line 954
    iput v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    .line 955
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    .line 956
    const-string v5, ""

    iput-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    .line 957
    const-string v5, ""

    iput-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    .line 958
    iput v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    .line 959
    const/4 v3, 0x1

    .line 960
    const/4 v4, 0x1

    goto/16 :goto_13

    .line 963
    :cond_1
    iget-object v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 964
    invoke-virtual {v5, v6}, Lcom/mediatek/wfo/impl/WfcHandler;->updatedWifiConnectedStatus(Z)V

    .line 967
    :cond_2
    const-string v5, ""

    .local v5, "wifiApMac":Ljava/lang/String;
    const-string v7, ""

    .local v7, "ipv4Address":Ljava/lang/String;
    const-string v8, ""

    .local v8, "ipv6Address":Ljava/lang/String;
    const-string v9, ""

    .local v9, "ifName":Ljava/lang/String;
    const-string v10, ""

    .line 968
    .local v10, "ssid":Ljava/lang/String;
    const/4 v11, -0x1

    .line 969
    .local v11, "ipv4PrefixLen":I
    const/4 v12, -0x1

    .line 970
    .local v12, "ipv6PrefixLen":I
    const/4 v13, 0x0

    .line 971
    .local v13, "routeIpv4":Landroid/net/RouteInfo;
    const/4 v14, 0x0

    .line 972
    .local v14, "routeIpv6":Landroid/net/RouteInfo;
    const-string v15, ""

    .line 973
    .local v15, "ipv4Gateway":Ljava/lang/String;
    const-string v16, ""

    .line 975
    .local v16, "ipv6Gateway":Ljava/lang/String;
    const/16 v17, 0x0

    .line 976
    .local v17, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/16 v18, 0x0

    .line 977
    .local v18, "mtu":I
    iput-boolean v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    .line 981
    iget-boolean v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 982
    iput-boolean v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 983
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 987
    :cond_3
    const/4 v6, 0x0

    .line 988
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_4

    .line 989
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    move/from16 v19, v3

    move/from16 v20, v4

    goto :goto_0

    .line 991
    :cond_4
    const/16 v0, 0x3f1

    move/from16 v19, v3

    move/from16 v20, v4

    const/4 v3, 0x0

    .end local v3    # "changed":Z
    .end local v4    # "ipAddrChanged":Z
    .local v19, "changed":Z
    .local v20, "ipAddrChanged":Z
    invoke-virtual {v1, v0, v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 993
    .local v4, "msg":Landroid/os/Message;
    iget-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 994
    :try_start_0
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    .end local v4    # "msg":Landroid/os/Message;
    :goto_0
    if-eqz v6, :cond_a

    .line 999
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    .line 1000
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 1001
    .local v0, "tempSsid":Ljava/lang/String;
    const-string v3, "<unknown ssid>"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1002
    const-string v0, ""

    .line 1003
    const-string v3, "updateWifiConnectedInfo: <unknown ssid>"

    invoke-virtual {v1, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1005
    :cond_5
    invoke-direct {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateSsidToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1007
    iget-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    .line 1008
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v5, :cond_9

    .line 1009
    :cond_6
    if-nez v5, :cond_7

    const-string v3, ""

    goto :goto_1

    :cond_7
    move-object v3, v5

    :goto_1
    iput-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    .line 1010
    const/4 v3, 0x1

    .line 1011
    .end local v19    # "changed":Z
    .restart local v3    # "changed":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v0

    .end local v0    # "tempSsid":Ljava/lang/String;
    .local v21, "tempSsid":Ljava/lang/String;
    const-string v0, "updateWifiConnectedInfo(): mWifiApMac = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiApMac:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1007
    .end local v3    # "changed":Z
    .end local v21    # "tempSsid":Ljava/lang/String;
    .restart local v0    # "tempSsid":Ljava/lang/String;
    .restart local v19    # "changed":Z
    :cond_8
    move-object/from16 v21, v0

    .line 1016
    .end local v0    # "tempSsid":Ljava/lang/String;
    :cond_9
    move/from16 v3, v19

    goto :goto_2

    .line 998
    :cond_a
    move/from16 v3, v19

    .line 1016
    .end local v19    # "changed":Z
    .restart local v3    # "changed":Z
    :goto_2
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v4, v0

    move/from16 v19, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v5, v18

    const/4 v6, 0x0

    .end local v6    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v16    # "ipv6Gateway":Ljava/lang/String;
    .end local v17    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v18    # "mtu":I
    .local v2, "ipv6Gateway":Ljava/lang/String;
    .local v3, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v5, "mtu":I
    .restart local v19    # "changed":Z
    .local v21, "wifiApMac":Ljava/lang/String;
    .local v22, "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_3
    if-ge v6, v4, :cond_15

    move/from16 v23, v4

    aget-object v4, v0, v6

    .line 1017
    .local v4, "nw":Landroid/net/Network;
    move-object/from16 v24, v0

    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 1020
    .local v0, "prop":Landroid/net/LinkProperties;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_14

    .line 1021
    move-object/from16 v16, v4

    .end local v4    # "nw":Landroid/net/Network;
    .local v16, "nw":Landroid/net/Network;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v13

    .end local v13    # "routeIpv4":Landroid/net/RouteInfo;
    .local v17, "routeIpv4":Landroid/net/RouteInfo;
    const-string v13, "wlan"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1022
    goto/16 :goto_a

    .line 1026
    :cond_b
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/LinkAddress;

    .line 1027
    .local v13, "linkAddr":Landroid/net/LinkAddress;
    move-object/from16 v18, v4

    invoke-virtual {v13}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 1028
    .local v4, "address":Ljava/net/InetAddress;
    move-object/from16 v25, v7

    .end local v7    # "ipv4Address":Ljava/lang/String;
    .local v25, "ipv4Address":Ljava/lang/String;
    instance-of v7, v4, Ljava/net/Inet4Address;

    if-eqz v7, :cond_c

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_c

    .line 1029
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 1030
    .end local v25    # "ipv4Address":Ljava/lang/String;
    .restart local v7    # "ipv4Address":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v11

    goto :goto_5

    .line 1031
    .end local v7    # "ipv4Address":Ljava/lang/String;
    .restart local v25    # "ipv4Address":Ljava/lang/String;
    :cond_c
    instance-of v7, v4, Ljava/net/Inet6Address;

    if-eqz v7, :cond_d

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v7

    if-nez v7, :cond_d

    .line 1032
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_d

    .line 1035
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 1036
    .end local v8    # "ipv6Address":Ljava/lang/String;
    .local v7, "ipv6Address":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v8

    move v12, v8

    move-object v8, v7

    move-object/from16 v7, v25

    .end local v12    # "ipv6PrefixLen":I
    .local v8, "ipv6PrefixLen":I
    goto :goto_5

    .line 1043
    .end local v4    # "address":Ljava/net/InetAddress;
    .end local v7    # "ipv6Address":Ljava/lang/String;
    .end local v13    # "linkAddr":Landroid/net/LinkAddress;
    .local v8, "ipv6Address":Ljava/lang/String;
    .restart local v12    # "ipv6PrefixLen":I
    :cond_d
    move-object/from16 v7, v25

    .end local v25    # "ipv4Address":Ljava/lang/String;
    .local v7, "ipv4Address":Ljava/lang/String;
    :goto_5
    move-object/from16 v4, v18

    goto :goto_4

    .line 1045
    :cond_e
    move-object/from16 v25, v7

    .end local v7    # "ipv4Address":Ljava/lang/String;
    .restart local v25    # "ipv4Address":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    .line 1046
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getMtu()I

    move-result v4

    .line 1048
    .end local v5    # "mtu":I
    .local v4, "mtu":I
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object/from16 v13, v17

    .end local v17    # "routeIpv4":Landroid/net/RouteInfo;
    .local v13, "routeIpv4":Landroid/net/RouteInfo;
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 1049
    .local v7, "routeInfo":Landroid/net/RouteInfo;
    invoke-virtual {v7}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1050
    move-object v13, v7

    .line 1051
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v17

    if-eqz v17, :cond_f

    .line 1052
    invoke-virtual {v13}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    goto :goto_7

    :cond_f
    const-string v17, ""

    :goto_7
    move-object/from16 v15, v17

    goto :goto_9

    .line 1053
    :cond_10
    invoke-virtual {v7}, Landroid/net/RouteInfo;->isIPv6Default()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1054
    move-object v14, v7

    .line 1055
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v17

    if-eqz v17, :cond_11

    .line 1056
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    goto :goto_8

    :cond_11
    const-string v17, ""

    :goto_8
    move-object/from16 v2, v17

    .line 1059
    .end local v7    # "routeInfo":Landroid/net/RouteInfo;
    :cond_12
    :goto_9
    goto :goto_6

    .line 1061
    :cond_13
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    move-object/from16 v7, v25

    move v5, v4

    .end local v9    # "ifName":Ljava/lang/String;
    .local v5, "ifName":Ljava/lang/String;
    goto :goto_b

    .line 1020
    .end local v16    # "nw":Landroid/net/Network;
    .end local v25    # "ipv4Address":Ljava/lang/String;
    .local v4, "nw":Landroid/net/Network;
    .local v5, "mtu":I
    .local v7, "ipv4Address":Ljava/lang/String;
    .restart local v9    # "ifName":Ljava/lang/String;
    :cond_14
    move-object/from16 v16, v4

    move-object/from16 v17, v13

    .line 1016
    .end local v0    # "prop":Landroid/net/LinkProperties;
    .end local v4    # "nw":Landroid/net/Network;
    .end local v13    # "routeIpv4":Landroid/net/RouteInfo;
    .restart local v17    # "routeIpv4":Landroid/net/RouteInfo;
    :goto_a
    move-object/from16 v13, v17

    .end local v17    # "routeIpv4":Landroid/net/RouteInfo;
    .restart local v13    # "routeIpv4":Landroid/net/RouteInfo;
    :goto_b
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v23

    move-object/from16 v0, v24

    goto/16 :goto_3

    .line 1064
    :cond_15
    move-object/from16 v17, v13

    .end local v13    # "routeIpv4":Landroid/net/RouteInfo;
    .restart local v17    # "routeIpv4":Landroid/net/RouteInfo;
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1065
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, ""

    goto :goto_c

    :cond_16
    move-object v0, v7

    :goto_c
    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    .line 1066
    iput v11, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4PrefixLen:I

    .line 1067
    iput-object v15, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Gateway:Ljava/lang/String;

    .line 1068
    const/4 v4, 0x1

    .line 1069
    .end local v20    # "ipAddrChanged":Z
    .local v4, "ipAddrChanged":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWifiConnectedInfo(): mWifiIpv4Address = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv4Address:Ljava/lang/String;

    .line 1070
    invoke-direct {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1069
    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    goto :goto_d

    .line 1064
    .end local v4    # "ipAddrChanged":Z
    .restart local v20    # "ipAddrChanged":Z
    :cond_17
    move/from16 v4, v20

    .line 1072
    .end local v20    # "ipAddrChanged":Z
    .restart local v4    # "ipAddrChanged":Z
    :goto_d
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1073
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, ""

    goto :goto_e

    :cond_18
    move-object v0, v8

    :goto_e
    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 1074
    iput v12, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6PrefixLen:I

    .line 1075
    iput-object v2, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Gateway:Ljava/lang/String;

    .line 1076
    const/4 v4, 0x1

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWifiConnectedInfo(): mWifiIpv6Address = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiIpv6Address:Ljava/lang/String;

    .line 1078
    invoke-direct {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1077
    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1081
    :cond_19
    iget-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1082
    if-nez v9, :cond_1a

    const-string v0, ""

    goto :goto_f

    :cond_1a
    move-object v0, v9

    :goto_f
    iput-object v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    .line 1083
    const/4 v0, 0x1

    .line 1084
    .end local v19    # "changed":Z
    .local v0, "changed":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateWifiConnectedInfo(): mIfName = "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIfName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    goto :goto_10

    .line 1081
    .end local v0    # "changed":Z
    .restart local v19    # "changed":Z
    :cond_1b
    move/from16 v0, v19

    .line 1087
    .end local v19    # "changed":Z
    .restart local v0    # "changed":Z
    :goto_10
    iget-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 1088
    if-nez v10, :cond_1c

    const-string v6, ""

    goto :goto_11

    :cond_1c
    move-object v6, v10

    :goto_11
    iput-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    .line 1089
    const/4 v0, 0x1

    .line 1090
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateWifiConnectedInfo(): mSsid = "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSsid:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1093
    :cond_1d
    if-eqz v3, :cond_1f

    .line 1094
    iget-object v6, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    if-nez v6, :cond_1e

    .line 1095
    iput-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    .line 1096
    const/4 v4, 0x1

    .line 1097
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateWifiConnectedInfo(): mDnsServers ="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    move/from16 v16, v0

    goto :goto_12

    .line 1099
    :cond_1e
    new-instance v6, Ljava/util/ArrayList;

    iget-object v13, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1100
    .local v6, "common":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v6, v3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 1101
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    move/from16 v16, v0

    .end local v0    # "changed":Z
    .local v16, "changed":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eq v13, v0, :cond_20

    .line 1102
    const/4 v0, 0x1

    .line 1103
    .end local v4    # "ipAddrChanged":Z
    .local v0, "ipAddrChanged":Z
    iput-object v3, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    .line 1104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateWifiConnectedInfo(): mDnsServers ="

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mDnsServers:Ljava/util/List;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    move v4, v0

    goto :goto_12

    .line 1093
    .end local v6    # "common":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v16    # "changed":Z
    .local v0, "changed":Z
    .restart local v4    # "ipAddrChanged":Z
    :cond_1f
    move/from16 v16, v0

    .line 1109
    .end local v0    # "changed":Z
    .restart local v16    # "changed":Z
    :cond_20
    :goto_12
    if-ltz v5, :cond_21

    iget v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    if-eq v0, v5, :cond_21

    .line 1110
    iput v5, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    .line 1111
    const/4 v0, 0x1

    .line 1112
    .end local v16    # "changed":Z
    .restart local v0    # "changed":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateWifiConnectedInfo(): mMtu = "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mMtu:I

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    move v3, v0

    goto :goto_13

    .line 1117
    .end local v0    # "changed":Z
    .end local v2    # "ipv6Gateway":Ljava/lang/String;
    .end local v3    # "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v5    # "mtu":I
    .end local v7    # "ipv4Address":Ljava/lang/String;
    .end local v8    # "ipv6Address":Ljava/lang/String;
    .end local v9    # "ifName":Ljava/lang/String;
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v11    # "ipv4PrefixLen":I
    .end local v12    # "ipv6PrefixLen":I
    .end local v14    # "routeIpv6":Landroid/net/RouteInfo;
    .end local v15    # "ipv4Gateway":Ljava/lang/String;
    .end local v17    # "routeIpv4":Landroid/net/RouteInfo;
    .end local v21    # "wifiApMac":Ljava/lang/String;
    .end local v22    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v16    # "changed":Z
    :cond_21
    move/from16 v3, v16

    .end local v16    # "changed":Z
    .local v3, "changed":Z
    :cond_22
    :goto_13
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkIfstartWifiScan(Z)V

    .line 1119
    if-eqz v3, :cond_23

    .line 1120
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiAssoc()V

    .line 1123
    :cond_23
    if-eqz v4, :cond_24

    .line 1124
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiIpAddress()V

    .line 1127
    :cond_24
    iget-boolean v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v0, :cond_25

    iget-boolean v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    if-eqz v0, :cond_25

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWifiConnectedInfo(): mRssiChange = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1129
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 1132
    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    .line 1133
    return-void

    .line 995
    .end local v3    # "changed":Z
    .local v4, "msg":Landroid/os/Message;
    .local v5, "wifiApMac":Ljava/lang/String;
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v7    # "ipv4Address":Ljava/lang/String;
    .restart local v8    # "ipv6Address":Ljava/lang/String;
    .restart local v9    # "ifName":Ljava/lang/String;
    .restart local v10    # "ssid":Ljava/lang/String;
    .restart local v11    # "ipv4PrefixLen":I
    .restart local v12    # "ipv6PrefixLen":I
    .restart local v13    # "routeIpv4":Landroid/net/RouteInfo;
    .restart local v14    # "routeIpv6":Landroid/net/RouteInfo;
    .restart local v15    # "ipv4Gateway":Ljava/lang/String;
    .local v16, "ipv6Gateway":Ljava/lang/String;
    .local v17, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v18    # "mtu":I
    .restart local v19    # "changed":Z
    .restart local v20    # "ipAddrChanged":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateWlanMacAddr()Ljava/lang/String;
    .locals 10

    .line 1671
    :try_start_0
    const-string v0, "wlan0"

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1672
    .local v0, "wnif":Ljava/net/NetworkInterface;
    const-string v1, ""

    if-nez v0, :cond_0

    .line 1673
    :try_start_1
    const-string v2, "updateWlanMacAddr wnif == null"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1674
    return-object v1

    .line 1676
    :cond_0
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 1677
    .local v2, "macBytes":[B
    if-nez v2, :cond_1

    .line 1678
    const-string v3, "updateWlanMacAddr macBytes == null"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1679
    return-object v1

    .line 1682
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1683
    .local v1, "res1":Ljava/lang/StringBuilder;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_2

    aget-byte v7, v2, v5

    .line 1684
    .local v7, "b":B
    const-string v8, "%02X:"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v6, v4

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    nop

    .end local v7    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1687
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 1688
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1690
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 1692
    .end local v0    # "wnif":Ljava/net/NetworkInterface;
    .end local v1    # "res1":Ljava/lang/StringBuilder;
    .end local v2    # "macBytes":[B
    :catch_0
    move-exception v0

    .line 1694
    const-string v0, "02:00:00:00:00:00"

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 568
    return-object p0
.end method

.method public getLastRssi()I
    .locals 1

    .line 1639
    iget v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLastRssi:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 245
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_2

    .line 343
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 344
    .local v0, "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3f6

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 345
    goto/16 :goto_2

    .line 355
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 356
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x47f

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 357
    goto/16 :goto_2

    .line 351
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 352
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3ef

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 353
    goto/16 :goto_2

    .line 347
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 348
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3ec

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 349
    goto/16 :goto_2

    .line 339
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 340
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3eb

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 341
    goto/16 :goto_2

    .line 335
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 336
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3e9

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 337
    goto/16 :goto_2

    .line 331
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 332
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/16 v1, 0x3ea

    invoke-direct {p0, v1, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleRetry(ILandroid/os/AsyncResult;)V

    .line 333
    goto/16 :goto_2

    .line 326
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onWifiLock(Landroid/os/Message;)V

    .line 327
    goto/16 :goto_2

    .line 359
    :pswitch_8
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleAirplaneMode()V

    .line 360
    goto/16 :goto_2

    .line 309
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiPingResult(Landroid/os/Message;)V

    .line 310
    goto/16 :goto_2

    .line 323
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onWifiPingRequest(Landroid/os/Message;)V

    .line 324
    goto/16 :goto_2

    .line 320
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onNattKeepAliveChanged(Landroid/os/Message;)V

    .line 321
    goto/16 :goto_2

    .line 317
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onWifiPdnActivate(Landroid/os/Message;)V

    .line 318
    goto/16 :goto_2

    .line 314
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->onWifiMonitoringThreshouldChanged(Landroid/os/Message;)V

    .line 315
    goto/16 :goto_2

    .line 397
    :pswitch_e
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->initialize()V

    .line 398
    goto/16 :goto_2

    .line 280
    :pswitch_f
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiUeMac()V

    .line 281
    goto/16 :goto_2

    .line 393
    :pswitch_10
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleWifiStateChange(I)V

    .line 394
    goto/16 :goto_2

    .line 383
    :pswitch_11
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 385
    .local v2, "retryMsg":Landroid/os/Message;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 387
    .end local v2    # "retryMsg":Landroid/os/Message;
    goto :goto_0

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPendingMsgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 389
    monitor-exit v0

    .line 390
    goto/16 :goto_2

    .line 389
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 378
    :pswitch_12
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateLastRssi()V

    .line 379
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 380
    goto/16 :goto_2

    .line 372
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 373
    .local v0, "scanImmediately":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry checkIfstartWifiScan, scanImmediately: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiPdnHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkIfstartWifiScan(Z)V

    .line 375
    goto/16 :goto_2

    .line 367
    .end local v0    # "scanImmediately":Z
    :pswitch_14
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 368
    .local v0, "isConnected":I
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWifiConnectedInfo(I)V

    .line 369
    goto/16 :goto_2

    .line 363
    .end local v0    # "isConnected":I
    :pswitch_15
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->initWifiManager()V

    .line 364
    goto/16 :goto_2

    .line 306
    :pswitch_16
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setNattKeepAliveStatus(Landroid/os/Message;)V

    .line 307
    goto/16 :goto_2

    .line 303
    :pswitch_17
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->checkIfstartWifiScan(Z)V

    .line 304
    goto/16 :goto_2

    .line 287
    :pswitch_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync airplane mode to MD: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 288
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    if-eqz v0, :cond_1

    .line 289
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 290
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabledWithSyncAPMode()V

    .line 293
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiAssoc()V

    .line 294
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 295
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v0, :cond_5

    .line 296
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 297
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiIpAddress()V

    .line 298
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    goto :goto_2

    .line 283
    :pswitch_19
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiIpAddress()V

    .line 284
    goto :goto_2

    .line 277
    :pswitch_1a
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiAssoc()V

    .line 278
    goto :goto_2

    .line 274
    :pswitch_1b
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 275
    goto :goto_2

    .line 268
    :pswitch_1c
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    if-eqz v0, :cond_5

    .line 269
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiSignalLevel()V

    .line 270
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRssiChange:Z

    goto :goto_2

    .line 248
    :pswitch_1d
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 249
    .restart local v0    # "isConnected":I
    if-nez v0, :cond_2

    .line 250
    const-string v1, "wifi is disconnect, notify packet keep alive to stop"

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mPacketKeepAliveProcessor:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    invoke-virtual {v1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->notifyWifiDisconnect()V

    goto :goto_1

    .line 254
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWlanMacAddr()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "currentUeMac":Ljava/lang/String;
    const-string v2, "02:00:00:00:00:00"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 259
    :cond_3
    sget-object v2, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 260
    sput-object v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiPdnHandler updateWlanMacAddr mWifiUeMac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiUeMac:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 264
    .end local v1    # "currentUeMac":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->updateWifiConnectedInfo(I)V

    .line 265
    nop

    .line 404
    .end local v0    # "isConnected":I
    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44d
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x47e
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4b0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleRadioStateChanged(II)V
    .locals 3
    .param p1, "simIdx"    # I
    .param p2, "intRadioState"    # I

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRadioStateChanged intRadioState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 573
    iput p2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mRadioState:I

    .line 574
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    .line 575
    const-string v0, "send EVENT_RADIO_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 576
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isEccInProgress()Z

    move-result v0

    .line 578
    .local v0, "isInEcc":Z
    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-ne p2, v1, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    if-eqz v2, :cond_1

    .line 580
    :cond_0
    const-string v2, "Disable airplane mode if radio is on"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 581
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeOn:Z

    .line 582
    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsAirplaneModeChange:Z

    .line 584
    :cond_1
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 585
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 587
    .end local v0    # "isInEcc":Z
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method public isWifiConnected()Z
    .locals 1

    .line 711
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiConnected:Z

    return v0
.end method

.method public isWifiPdnExisted()Z
    .locals 3

    .line 1584
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 1585
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWifiPdnExisted:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWifiPdnExisted: found WiFi PDN on SIM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1587
    const/4 v1, 0x1

    return v1

    .line 1584
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1590
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1761
    sget-boolean v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->USR_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->TELDBG:Z

    if-eqz v0, :cond_1

    .line 1762
    :cond_0
    const-string v0, "WifiPdnHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_1
    return-void
.end method

.method public setWfcHandler(Lcom/mediatek/wfo/impl/WfcHandler;)V
    .locals 0
    .param p1, "wfcHandler"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 1767
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    .line 1768
    return-void
.end method

.method public setWifiOff()V
    .locals 1

    .line 1275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler;->mIsWifiEnabled:Z

    .line 1276
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiEnabled()V

    .line 1277
    return-void
.end method
