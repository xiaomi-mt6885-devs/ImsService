.class public Lcom/mediatek/wfo/impl/WfcLocationHandler;
.super Landroid/os/Handler;
.source "WfcLocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;,
        Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;,
        Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;
    }
.end annotation


# static fields
.field private static final ACTION_LOCATED_PLMN_CHANGED:Ljava/lang/String; = "com.mediatek.intent.action.LOCATED_PLMN_CHANGED"

.field private static final ACTION_LOCATION_CACHE:Ljava/lang/String; = "com.mediatek.intent.action.LOCATION_HANDLE"

.field private static final BASE:I = 0xbb8

.field private static final CACHE_DISABLE:I = 0x0

.field private static final CACHE_ENABLE:I = 0x1

.field private static final CACHE_ENABLE_EXTRA:Ljava/lang/String; = "enable_location_handle"

.field private static final COUNTRY_CODE_HK:Ljava/lang/String; = "HK"

.field private static final ENGLOAD:Z

.field private static final EVENT_ALL_RETRY_GET_LOCATION_REQUST:I = 0xbc0

.field private static final EVENT_DIALING_E911:I = 0xbbe

.field private static final EVENT_GET_LAST_KNOWN_LOCATION:I = 0xbb9

.field public static final EVENT_GET_LOCATION_REQUEST:I = 0xbb8

.field private static final EVENT_HANDLE_LAST_KNOWN_LOCATION_RESPONSE:I = 0xbbb

.field private static final EVENT_HANDLE_NETWORK_LOCATION_RESPONSE:I = 0xbba

.field private static final EVENT_LOCATION_CACHE:I = 0xbc3

.field private static final EVENT_LOCATION_MODE_CHANGED:I = 0xbc1

.field private static final EVENT_LOCATION_PROVIDERS_CHANGED:I = 0xbc5

.field private static final EVENT_REQUEST_NETWORK_LOCATION:I = 0xbc2

.field private static final EVENT_RETRY_GET_LOCATION_REQUEST:I = 0xbbf

.field private static final EVENT_RETRY_NETWORK_LOCATION_REQUEST:I = 0xbc4

.field private static final EVENT_SET_COUNTRY_CODE:I = 0xbbd

.field private static final EVENT_SET_LOCATION_INFO:I = 0xbbc

.field private static final EXTRA_ISO:Ljava/lang/String; = "iso"

.field private static final KEY_LOCATION_CACHE:Ljava/lang/String; = "key_ocation_cache"

.field private static final KEY_LOCATION_CACHE_ACCOUNTID:Ljava/lang/String; = "key_accountid"

.field private static final KEY_LOCATION_CACHE_ACCURACY:Ljava/lang/String; = "key_accuracy"

.field private static final KEY_LOCATION_CACHE_BROADCASTFLAG:Ljava/lang/String; = "key_broadcastflag"

.field private static final KEY_LOCATION_CACHE_CITY:Ljava/lang/String; = "key_city"

.field private static final KEY_LOCATION_CACHE_COUNTRYCODE:Ljava/lang/String; = "key_countrycode"

.field private static final KEY_LOCATION_CACHE_LATITUDE:Ljava/lang/String; = "key_latitude"

.field private static final KEY_LOCATION_CACHE_LONGTITUDE:Ljava/lang/String; = "key_longitude"

.field private static final KEY_LOCATION_CACHE_METHOD:Ljava/lang/String; = "key_method"

.field private static final KEY_LOCATION_CACHE_STATE:Ljava/lang/String; = "key_state"

.field private static final KEY_LOCATION_CACHE_ZIP:Ljava/lang/String; = "key_zip"

.field private static final LOCATION_PERMISSION_NAME:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static MAX_GEOCODING_FAILURE_RETRY:I = 0x0

.field private static MAX_NETWORK_LOCATION_RETRY:I = 0x0

.field private static MAX_NUM_OF_GET_LOCATION_TASKS_THREAD:I = 0x0

.field private static final MAX_VALID_SIM_COUNT:I = 0x4

.field private static final MSG_REG_IMSA_REQUEST_GEO_LOCATION_INFO:I = 0x17709

.field private static final MSG_REG_IMSA_RESPONSE_GETO_LOCATION_INFO:I = 0x16396

.field public static final MTK_KEY_WFC_GET_LOCATION_ALWAYS:Ljava/lang/String; = "mtk_carrier_wfc_get_location_always"

.field private static NETWORK_LOCATION_UPDATE_TIME:I = 0x0

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static REQUEST_GEOLOCATION_FROM_NETWORK_TIMEOUT:I = 0x0

.field private static final REQUEST_LOCATION_RETRY_TIMEOUT:I = 0x1388

.field private static final REQUEST_NETWORK_LOCATION_RETRY_TIMEOUT:I = 0xbb8

.field private static final RESPONSE_SET_LOCATION_ENABLED:I = 0xc1d

.field private static final RESPONSE_SET_LOCATION_INFO:I = 0xc1c

.field private static final TAG:Ljava/lang/String; = "WfcLocationHandler"

.field private static final TELDBG:Z

.field private static final USR_BUILD:Z


# instance fields
.field private mCallStateListener:Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;

.field private mConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceContext:Landroid/content/Context;

.field private mGeoCoder:Landroid/location/Geocoder;

.field private mGeocodingFailRetry:I

.field private mGnssProxyPackageName:Ljava/lang/String;

.field private mLastLocationSetting:Z

.field private mLocationInfoQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationListener:Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationRequestLock:Ljava/lang/Object;

.field private mLocationRequestRegistered:Z

.field private mLocationSetting:Z

.field private mLocationTimeout:Z

.field private mLocationTimeoutLock:Ljava/lang/Object;

.field private mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

.field private mNetworkAvailable:Z

.field private mNetworkLocationRetry:I

.field private mNetworkLocationTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingLocationRequest:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mPlmnCountryCode:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimCount:I

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

.field private mWifiMacAddr:Ljava/lang/String;

.field private mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 94
    const/4 v0, 0x3

    sput v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->MAX_NUM_OF_GET_LOCATION_TASKS_THREAD:I

    .line 95
    const v0, 0xea60

    sput v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->REQUEST_GEOLOCATION_FROM_NETWORK_TIMEOUT:I

    .line 96
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->ENGLOAD:Z

    .line 98
    const/4 v0, 0x5

    sput v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->MAX_GEOCODING_FAILURE_RETRY:I

    .line 99
    const/16 v0, 0xf

    sput v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    .line 121
    const/16 v0, 0x1388

    sput v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->NETWORK_LOCATION_UPDATE_TIME:I

    .line 168
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 169
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
    sput-boolean v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->USR_BUILD:Z

    .line 170
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/mediatek/wfo/impl/WfcLocationHandler;->TELDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/wfo/impl/WfcHandler;Lcom/mediatek/wfo/impl/WifiPdnHandler;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wfcHandler"    # Lcom/mediatek/wfo/impl/WfcHandler;
    .param p3, "wifiPdnHandler"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .param p4, "simCount"    # I
    .param p5, "looper"    # Landroid/os/Looper;
    .param p6, "mwiRil"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 490
    invoke-direct {p0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    new-instance v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mCallStateListener:Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;Lcom/mediatek/wfo/impl/WfcLocationHandler$1;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationListener:Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestRegistered:Z

    .line 144
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    .line 146
    iput-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWifiMacAddr:Ljava/lang/String;

    .line 152
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkAvailable:Z

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    .line 157
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    .line 159
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeout:Z

    .line 160
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    .line 162
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationSetting:Z

    .line 164
    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLastLocationSetting:Z

    .line 1154
    new-instance v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$3;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler$3;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 491
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    .line 492
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mDeviceContext:Landroid/content/Context;

    .line 493
    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mDeviceContext:Landroid/content/Context;

    .line 495
    const-string v0, "replace mContext to mDeviceContext"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 497
    :cond_0
    iput-object p2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    .line 498
    iput-object p3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 499
    const/4 v0, 0x4

    if-gt p4, v0, :cond_1

    move v0, p4

    :cond_1
    iput v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mSimCount:I

    .line 500
    iput-object p6, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 502
    sget v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->MAX_GEOCODING_FAILURE_RETRY:I

    iput v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeocodingFailRetry:I

    .line 503
    sget v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    iput v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationRetry:I

    .line 505
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeoCoder:Landroid/location/Geocoder;

    .line 506
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 508
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 509
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mCallStateListener:Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 511
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationSetting:Z

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1st time send location setting to modem, mLocationSetting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 514
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setLocationEnabled()V

    .line 516
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 517
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->loadProxyNameFromCarrierConfig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGnssProxyPackageName:Ljava/lang/String;

    .line 518
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 519
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    .line 520
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 522
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->registerForBroadcast()V

    .line 523
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->registerIndication()V

    .line 524
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->registerDefaultNetwork()V

    .line 525
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 87
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->isEccInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/wfo/impl/WfcLocationHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/wfo/impl/WfcLocationHandler;Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;Ljava/lang/Boolean;)Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;
    .param p1, "x1"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    .param p2, "x2"    # Ljava/lang/Boolean;

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getGeoLocationFromLatLong(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;Ljava/lang/Boolean;)Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 87
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->isCtaNotAllow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 87
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 87
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 87
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkAvailable:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/wfo/impl/WfcLocationHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;
    .param p1, "x1"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkAvailable:Z

    return p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 87
    sget-boolean v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->ENGLOAD:Z

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 87
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/wfo/impl/WfcLocationHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 87
    iget v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeocodingFailRetry:I

    return v0
.end method

.method static synthetic access$608(Lcom/mediatek/wfo/impl/WfcLocationHandler;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 87
    iget v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeocodingFailRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeocodingFailRetry:I

    return v0
.end method

.method static synthetic access$610(Lcom/mediatek/wfo/impl/WfcLocationHandler;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 87
    iget v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeocodingFailRetry:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeocodingFailRetry:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 87
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->cancelNetworkLocationRequest()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 87
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 87
    iget-boolean v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeout:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/wfo/impl/WfcLocationHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;
    .param p1, "x1"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeout:Z

    return p1
.end method

.method private addPackageInLocationSettingsWhitelist()V
    .locals 7

    .line 1054
    const-string v0, "location_ignore_settings_package_whitelist"

    .line 1056
    .local v0, "LOCATION_IGNORE_SETTINGS_PACKAGE_WHITELIST":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1058
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    .line 1059
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1058
    const-string v3, "location_ignore_settings_package_whitelist"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1061
    .local v2, "whitelist":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1062
    :cond_0
    if-nez v2, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1063
    .local v4, "outStr":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1064
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add WFC in location setting whitelist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1065
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    .line 1066
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1065
    invoke-static {v5, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1070
    .end local v4    # "outStr":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private addRetryLocationRequest(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 534
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 536
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 537
    .local v2, "result":[Ljava/lang/String;
    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/String;

    .line 538
    .local v4, "retryRet":[Ljava/lang/String;
    new-array v3, v3, [Ljava/lang/String;

    .line 539
    .local v3, "delayRet":[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    array-length v5, v2

    invoke-static {v2, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    new-instance v5, Landroid/os/AsyncResult;

    const/4 v7, 0x0

    invoke-direct {v5, v7, v4, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 542
    .local v5, "retryAr":Landroid/os/AsyncResult;
    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v7, v3, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v7, v8

    .line 544
    .local v7, "delayAr":Landroid/os/AsyncResult;
    const/16 v8, 0xbbf

    invoke-virtual {p0, v8, v5}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 545
    .local v9, "retryMsg":Landroid/os/Message;
    iget-object v10, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 547
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 550
    :cond_0
    iget-object v10, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v10, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 552
    :goto_0
    const-string v6, "WfcLocationHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Added, current PendingLocationRequest size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    .line 553
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 552
    invoke-static {v6, v10}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {p0, v8, v7}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 555
    .local v6, "delayMsg":Landroid/os/Message;
    const-wide/16 v10, 0x1388

    invoke-virtual {p0, v6, v10, v11}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 556
    nop

    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "result":[Ljava/lang/String;
    .end local v3    # "delayRet":[Ljava/lang/String;
    .end local v4    # "retryRet":[Ljava/lang/String;
    .end local v5    # "retryAr":Landroid/os/AsyncResult;
    .end local v6    # "delayMsg":Landroid/os/Message;
    .end local v7    # "delayAr":Landroid/os/AsyncResult;
    .end local v9    # "retryMsg":Landroid/os/Message;
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cancelNetworkLocationRequest()V
    .locals 4

    .line 1039
    const/16 v0, 0xbc4

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1040
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->removeMessages(I)V

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "WfcLocationHandler"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1043
    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestRegistered:Z

    .line 1044
    const-string v0, "cancelNetworkLocationRequest: empty locationManager, return"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    return-void

    .line 1047
    :cond_1
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationListener:Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1048
    iput-boolean v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestRegistered:Z

    .line 1049
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->removePackageInLocationSettingsWhitelist()V

    .line 1050
    const-string v0, "cancelNetworkLocationRequest"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return-void
.end method

.method private checkLocationProxyAppPermission()Z
    .locals 5

    .line 1354
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->loadProxyNameFromCarrierConfig()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGnssProxyPackageName:Ljava/lang/String;

    .line 1356
    const/4 v1, 0x1

    const-string v2, "WfcLocationHandler"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1357
    const-string v0, "The package name is empty, treat it as granted"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    return v1

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGnssProxyPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1363
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGnssProxyPackageName:Ljava/lang/String;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1364
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 1365
    .local v0, "proxyAppLocationGranted":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxyAppLocationGranted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    return v0

    .line 1369
    .end local v0    # "proxyAppLocationGranted":Z
    :cond_2
    const-string v0, "non-FWK permission app not installed, treat it as granted"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    return v1
.end method

.method private dispatchLocationRequest(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 643
    iget-wide v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLatitude:D

    .line 644
    .local v0, "latitude":D
    iget-wide v2, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLongitude:D

    .line 645
    .local v2, "longitude":D
    iget v4, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccuracy:F

    .line 647
    .local v4, "accuracy":F
    const-wide/16 v5, 0x0

    cmpl-double v7, v0, v5

    if-nez v7, :cond_0

    cmpl-double v5, v2, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_0

    .line 648
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->proccessLocationFromNetwork(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    goto :goto_0

    .line 650
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->cancelNetworkLocationRequest()V

    .line 651
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    monitor-enter v5

    .line 652
    const/4 v6, 0x0

    :try_start_0
    iput-boolean v6, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeout:Z

    .line 653
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    const-string v5, "removeMessages: EVENT_GET_LAST_KNOWN_LOCATION"

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 655
    const/16 v5, 0xbb9

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->removeMessages(I)V

    .line 656
    const-string v5, "GPS"

    iput-object v5, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 657
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->pollLocationInfo()V

    .line 660
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchLocationRequest(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 661
    return-void

    .line 653
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private getBooleanCarrierConfig(Ljava/lang/String;IZ)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "phoneId"    # I
    .param p3, "defaultValue"    # Z

    .line 1252
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1253
    const-string v0, "WfcLocationHandler"

    const-string v1, "getBooleanCarrierConfig fail, mContext = null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1257
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-direct {p0, p2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getSubId(I)I

    move-result v1

    .line 1258
    .local v1, "subId":I
    const/4 v2, 0x0

    .line 1259
    .local v2, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_1

    .line 1260
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1262
    :cond_1
    const/4 v3, 0x1

    .line 1263
    .local v3, "ret":Z
    if-eqz v2, :cond_2

    .line 1264
    invoke-virtual {v2, p1, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_0

    .line 1267
    :cond_2
    const-string v4, "getBooleanCarrierConfig: get from default config"

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1268
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v4, p1, p3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1270
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBooleanCarrierConfig phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1271
    return v3
.end method

.method private getGeoLocationFromLatLong(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;Ljava/lang/Boolean;)Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    .locals 12
    .param p1, "location"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    .param p2, "retry"    # Ljava/lang/Boolean;

    .line 802
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 803
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeoCoder:Landroid/location/Geocoder;

    if-nez v1, :cond_0

    .line 804
    const-string v0, "getGeoLocationFromLatLong: empty geoCoder, return an empty location"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 805
    return-object p1

    .line 808
    :cond_0
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 809
    const-string v0, "getGeoLocationFromLatLong: this system has no GeoCoder implementation!!"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 810
    return-object p1

    .line 813
    :cond_1
    iget-wide v7, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLatitude:D

    .line 814
    .local v7, "lat":D
    iget-wide v9, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLongitude:D

    .line 816
    .local v9, "lng":D
    const/4 v11, 0x0

    .line 818
    .local v11, "lstAddress":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mGeoCoder:Landroid/location/Geocoder;

    const/4 v6, 0x1

    move-wide v2, v7

    move-wide v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v1

    .line 823
    :goto_0
    goto :goto_1

    .line 821
    :catch_0
    move-exception v1

    .line 822
    .local v1, "e2":Ljava/lang/IllegalArgumentException;
    const-string v2, "mGeoCoder.getFromLocation throw IllegalArgumentException"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 819
    .end local v1    # "e2":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 820
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGeoCoder.getFromLocation throw IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 825
    :goto_1
    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 839
    :cond_2
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    .line 840
    iget-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 841
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    .line 843
    :cond_3
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 844
    iget-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 845
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 847
    :cond_4
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    .line 848
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 850
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getLocationCacheEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 851
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->saveLocationCache(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 854
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGeoLocationFromLatLong: location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 856
    return-object p1

    .line 826
    :cond_6
    :goto_2
    const-string v0, "getGeoLocationFromLatLong: get empty address"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 827
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getLocationCacheEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 828
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getLocationCache(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 829
    iget-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 830
    const/4 v0, 0x0

    return-object v0

    .line 832
    :cond_7
    return-object p1

    .line 834
    :cond_8
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 835
    return-object p1
.end method

.method private getLastKnownLocation(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)Z
    .locals 11
    .param p1, "info"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 937
    const-string v0, "getLastKnownLocation"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 940
    const-string v0, "getLastKnownLocation: empty locationManager, return"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 941
    return v1

    .line 945
    :cond_0
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 946
    const-string v0, "getLastKnownLocation: GPS_PROVIDER doesn\'t exist or not ready"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 947
    return v1

    .line 951
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 952
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 954
    .local v0, "gpsLocation":Landroid/location/Location;
    const/4 v2, 0x1

    const/16 v3, 0xbbb

    const-wide/32 v4, 0x1b7740

    if-eqz v0, :cond_2

    .line 956
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GPS location: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 957
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v6, v6, v4

    if-gez v6, :cond_2

    .line 958
    invoke-virtual {p0, v3, v1, v1, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 960
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 961
    return v2

    .line 966
    :cond_2
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v7, "network"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v6

    if-nez v6, :cond_3

    .line 967
    const-string v2, "getLastKnownLocation: NETWORK_PROVIDER doesn\'t exist or not ready"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 968
    return v1

    .line 973
    :cond_3
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 974
    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 976
    .local v6, "networkLocation":Landroid/location/Location;
    if-eqz v6, :cond_4

    .line 978
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Network location: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 979
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v4, v7, v4

    if-gez v4, :cond_4

    .line 980
    invoke-virtual {p0, v3, v1, v1, v6}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 982
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 983
    return v2

    .line 987
    :cond_4
    const-string v2, "getLastKnownLocation: no last known location"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 989
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setLocationInfo(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 990
    return v1
.end method

.method private getLocationCache(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    .locals 5
    .param p1, "location"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 912
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mDeviceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 914
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "key_accountid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccountId:I

    .line 916
    iget v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mBroadcastFlag:I

    if-nez v1, :cond_0

    .line 917
    const-string v1, "key_broadcastflag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mBroadcastFlag:I

    .line 920
    :cond_0
    const-string v1, "key_latitude"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v3, v1

    iput-wide v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLatitude:D

    .line 922
    const-string v1, "key_longitude"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v3, v1

    iput-wide v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLongitude:D

    .line 924
    const-string v1, "key_accuracy"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccuracy:F

    .line 926
    const-string v1, "key_method"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 927
    const-string v1, "key_city"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    .line 928
    const-string v1, "key_state"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 929
    const-string v1, "key_zip"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    .line 930
    const-string v1, "key_countrycode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get geolocation from cache, location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WfcLocationHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-object p1
.end method

.method private getLocationCacheEnable()Z
    .locals 4

    .line 878
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mDeviceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 879
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "key_ocation_cache"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 880
    .local v1, "locationCacheEnable":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get location cache enable status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WfcLocationHandler"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    return v1
.end method

.method private getMainCapabilityPhoneId()I
    .locals 3

    .line 1136
    const-string v0, "persist.vendor.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v1

    .line 1137
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1138
    :cond_0
    const/4 v0, -0x1

    .line 1140
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCapabilityPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1141
    return v0
.end method

.method private getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 2

    .line 1145
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1147
    .local v0, "phoneId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1148
    const/4 v1, 0x0

    return-object v1

    .line 1150
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getSimCountryCode()Ljava/lang/String;
    .locals 3

    .line 860
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, "simCountryCode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimCountryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 863
    return-object v0
.end method

.method private getSubId(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 1275
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1276
    .local v0, "subIds":[I
    const/4 v1, -0x1

    .line 1277
    .local v1, "subId":I
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1278
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 1280
    :cond_0
    return v1
.end method

.method private handleAllRetryLocationRequest()V
    .locals 4

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAllRetryLocationRequest mPendingLocationRequest.size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    const/16 v1, 0xbbf

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->removeMessages(I)V

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 577
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkAvailable:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 580
    :cond_1
    const-string v3, "Network not available, ignore EVENT_RETRY_GET_LOCATION_REQUEST."

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 578
    :cond_2
    :goto_1
    invoke-direct {p0, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->handleLocationRequest(Landroid/os/Message;)V

    .line 582
    .end local v2    # "msg":Landroid/os/Message;
    :goto_2
    goto :goto_0

    .line 583
    :cond_3
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 584
    monitor-exit v0

    .line 585
    return-void

    .line 584
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleLocationRequest(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 608
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v1, "WfcLocationHandler"

    if-nez v0, :cond_0

    .line 609
    const-string v0, "handleLocationInfo(): msg.obj is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return-void

    .line 612
    :cond_0
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/os/AsyncResult;

    .line 613
    .local v13, "ar":Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, [Ljava/lang/String;

    .line 615
    .local v14, "result":[Ljava/lang/String;
    if-nez v14, :cond_1

    .line 616
    const-string v0, "handleLocationInfo(): result is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void

    .line 621
    :cond_1
    const/4 v15, 0x5

    const/16 v16, 0x1

    const/16 v17, 0x0

    :try_start_0
    aget-object v0, v14, v17

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 622
    .local v4, "accId":I
    aget-object v0, v14, v16

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 623
    .local v5, "broadcastFlag":I
    const/4 v0, 0x2

    aget-object v0, v14, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 624
    .local v6, "latitude":D
    const/4 v0, 0x3

    aget-object v0, v14, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 625
    .local v8, "longitude":D
    const/4 v0, 0x4

    aget-object v0, v14, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 626
    .local v10, "accuracy":F
    aget-object v0, v14, v15

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 629
    .local v3, "simIdx":I
    new-instance v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    .line 632
    .local v0, "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLocationRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 633
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .end local v0    # "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    .end local v3    # "simIdx":I
    .end local v4    # "accId":I
    .end local v5    # "broadcastFlag":I
    .end local v6    # "latitude":D
    .end local v8    # "longitude":D
    .end local v10    # "accuracy":F
    goto :goto_0

    .line 634
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLocationRequest(), ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], accId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v14, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", broadcastFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v14, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", simIdx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v14, v15

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 640
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private handleNetworkLocationUpdate(Landroid/location/Location;)V
    .locals 14
    .param p1, "location"    # Landroid/location/Location;

    .line 664
    if-nez p1, :cond_0

    .line 665
    const-string v0, "network location get null, unexpected result"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 666
    return-void

    .line 669
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 670
    .local v0, "latitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 671
    .local v2, "longitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    .line 672
    .local v4, "accuracy":F
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    .line 673
    .local v5, "time":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update all LocationInfo with  time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " accuracy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 678
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v7, "duplicatedInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;>;"
    iget-object v8, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 680
    .local v9, "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    iput-wide v0, v9, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLatitude:D

    .line 681
    iput-wide v2, v9, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLongitude:D

    .line 682
    iput v4, v9, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccuracy:F

    .line 683
    iput-wide v5, v9, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mTime:J

    .line 684
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 686
    iget-object v10, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 687
    .local v11, "gpsLocationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    iget v12, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccountId:I

    iget v13, v9, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccountId:I

    if-ne v12, v13, :cond_1

    .line 688
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    .end local v11    # "gpsLocationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    :cond_1
    goto :goto_1

    .line 691
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 692
    .restart local v11    # "gpsLocationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    iget-object v12, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 693
    .end local v11    # "gpsLocationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    goto :goto_2

    .line 694
    :cond_3
    iget-object v10, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    .end local v9    # "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    goto :goto_0

    .line 697
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->pollLocationInfo()V

    .line 698
    iget-object v8, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 699
    return-void
.end method

.method private handleRetryLocationRequest(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 560
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current PendingLocationRequest size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPendingLocationRequest:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 562
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkAvailable:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    const-string v1, "Network not available, ignore EVENT_RETRY_GET_LOCATION_REQUEST."

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 563
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->handleLocationRequest(Landroid/os/Message;)V

    .line 567
    :goto_1
    monitor-exit v0

    .line 568
    return-void

    .line 567
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isCtaNotAllow()Z
    .locals 7

    .line 1288
    const/4 v0, 0x0

    .line 1292
    .local v0, "isCtaNotAllow":Z
    const-string v1, "ro.miui.cust_variant"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1293
    .local v1, "varintStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const-string v2, "cn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1294
    return v3

    .line 1299
    :cond_0
    const-string v2, "ro.vendor.mtk_cta_set"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 1301
    .local v2, "isCtaSet":Z
    :goto_0
    const-string v5, "ro.vendor.mtk_mobile_management"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1303
    .local v3, "isCtaSecurity":Z
    :goto_1
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 1304
    const-string v5, "network"

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    .line 1305
    .local v4, "isNlpEnabled":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCtaNotAllow: isCtaSet:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isCtaSecurity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isNlpEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1308
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    if-nez v4, :cond_3

    .line 1309
    const/4 v0, 0x1

    .line 1311
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCtaNotAllow: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WfcLocationHandler"

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    return v0
.end method

.method private isEccInProgress()Z
    .locals 3

    .line 1217
    const/4 v0, 0x0

    .line 1218
    .local v0, "isInEcc":Z
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-eqz v1, :cond_0

    .line 1219
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result v0

    .line 1221
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEccInProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WfcLocationHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    return v0
.end method

.method private isGetLocationAlways()Z
    .locals 6

    .line 1231
    const/4 v0, 0x0

    .line 1233
    .local v0, "getLocationAlways":Z
    const-string v1, "persist.vendor.mims_support"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    const-string v4, "mtk_carrier_wfc_get_location_always"

    if-gt v1, v2, :cond_0

    .line 1234
    nop

    .line 1235
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getMainCapabilityPhoneId()I

    move-result v1

    .line 1234
    invoke-direct {p0, v4, v1, v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getBooleanCarrierConfig(Ljava/lang/String;IZ)Z

    move-result v0

    goto :goto_1

    .line 1237
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mSimCount:I

    if-ge v1, v5, :cond_2

    .line 1238
    invoke-direct {p0, v4, v1, v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getBooleanCarrierConfig(Ljava/lang/String;IZ)Z

    move-result v0

    .line 1240
    if-ne v0, v2, :cond_1

    .line 1241
    goto :goto_1

    .line 1237
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1246
    .end local v1    # "i":I
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGetLocationAlways: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1247
    return v0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .line 1345
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    const/4 v0, 0x1

    return v0

    .line 1347
    :catch_0
    move-exception v1

    .line 1348
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "non-FWK permission apk not found, treat it as granted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WfcLocationHandler"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return v0
.end method

.method private loadProxyNameFromCarrierConfig()Ljava/lang/String;
    .locals 6

    .line 1316
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    .line 1317
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 1318
    const-string v1, ""

    if-nez v0, :cond_0

    .line 1319
    const-string v0, "loadProxyNameFromCarrierConfig: Carrier Config service is NOT ready"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1320
    return-object v1

    .line 1323
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 1324
    .local v0, "ddSubId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1325
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1326
    .local v2, "configs":Landroid/os/PersistableBundle;
    :goto_0
    if-nez v2, :cond_2

    .line 1327
    const-string v3, "SIM not ready, use default carrier config"

    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1328
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1331
    :cond_2
    const-string v3, "gps.nfw_proxy_apps"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1332
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gps.nfw_proxy_apps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1333
    if-eqz v3, :cond_3

    .line 1334
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1336
    .local v1, "strings":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    return-object v4

    .line 1338
    .end local v1    # "strings":[Ljava/lang/String;
    :cond_3
    const-string v4, "Cannot get location proxy APP package name"

    invoke-virtual {p0, v4}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1339
    return-object v1
.end method

.method private maskString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 1375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1376
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1377
    return-object p1

    .line 1379
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1380
    .local v1, "maskLength":I
    const-string v2, "*"

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 1381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1384
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1385
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1387
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

    .line 444
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc1c

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc1d

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 479
    const-string v0, "UNKNOWN"

    return-object v0

    .line 473
    :pswitch_0
    const-string v0, "EVENT_LOCATION_PROVIDERS_CHANGED"

    return-object v0

    .line 477
    :pswitch_1
    const-string v0, "EVENT_RETRY_NETWORK_LOCATION_REQUEST"

    return-object v0

    .line 475
    :pswitch_2
    const-string v0, "EVENT_LOCATION_CACHE"

    return-object v0

    .line 465
    :pswitch_3
    const-string v0, "EVENT_REQUEST_NETWORK_LOCATION"

    return-object v0

    .line 471
    :pswitch_4
    const-string v0, "EVENT_LOCATION_MODE_CHANGED"

    return-object v0

    .line 469
    :pswitch_5
    const-string v0, "EVENT_ALL_RETRY_GET_LOCATION_REQUST"

    return-object v0

    .line 467
    :pswitch_6
    const-string v0, "EVENT_RETRY_GET_LOCATION_REQUEST"

    return-object v0

    .line 459
    :pswitch_7
    const-string v0, "EVENT_DIALING_E911"

    return-object v0

    .line 453
    :pswitch_8
    const-string v0, "EVENT_SET_COUNTRY_CODE"

    return-object v0

    .line 451
    :pswitch_9
    const-string v0, "EVENT_SET_LOCATION_INFO"

    return-object v0

    .line 457
    :pswitch_a
    const-string v0, "EVENT_HANDLE_LAST_KNOWN_LOCATION_RESPONSE"

    return-object v0

    .line 449
    :pswitch_b
    const-string v0, "EVENT_HANDLE_NETWORK_LOCATION_RESPONSE"

    return-object v0

    .line 455
    :pswitch_c
    const-string v0, "EVENT_GET_LAST_KNOWN_LOCATION"

    return-object v0

    .line 447
    :pswitch_d
    const-string v0, "EVENT_GET_LOCATION_REQUEST"

    return-object v0

    .line 463
    :cond_0
    const-string v0, "RESPONSE_SET_LOCATION_ENABLED"

    return-object v0

    .line 461
    :cond_1
    const-string v0, "RESPONSE_SET_LOCATION_INFO"

    return-object v0

    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private pollLocationInfo()V
    .locals 3

    .line 733
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    const-string v0, "No GeoLocation task"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 735
    return-void

    .line 739
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 740
    .local v0, "LocationInfoQueueCopy":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;>;"
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationInfoQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 742
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mediatek/wfo/impl/WfcLocationHandler$2;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler$2;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;Ljava/util/List;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 761
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 763
    return-void
.end method

.method private proccessLocationFromNetwork(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 702
    const-string v0, "Network"

    iput-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 703
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->requestLocationFromNetworkLocation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 705
    const-string v0, "requestLocationFromNetworkLocation failed"

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 707
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setLocationInfo(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 709
    const/16 v0, 0xbc4

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 710
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->removeMessages(I)V

    .line 711
    sget v2, Lcom/mediatek/wfo/impl/WfcLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    iput v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationRetry:I

    .line 713
    :cond_0
    iget v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationRetry:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationRetry:I

    if-lez v2, :cond_1

    .line 714
    const-string v2, "requestLocationFromNetworkLocation retry."

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 715
    nop

    .line 716
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    .line 715
    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 719
    :cond_1
    const-string v0, "requestLocationFromNetworkLocation retry fail, skip."

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 721
    sget v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    iput v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationRetry:I

    .line 724
    :cond_2
    :goto_0
    const/16 v0, 0xbb9

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 726
    const-string v2, "Add delayed message: EVENT_GET_LAST_KNOWN_LOCATION"

    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget v1, Lcom/mediatek/wfo/impl/WfcLocationHandler;->REQUEST_GEOLOCATION_FROM_NETWORK_TIMEOUT:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 730
    :cond_3
    return-void
.end method

.method private registerDefaultNetwork()V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 589
    .local v0, "cm":Landroid/net/ConnectivityManager;
    new-instance v1, Lcom/mediatek/wfo/impl/WfcLocationHandler$1;

    invoke-direct {v1, p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler$1;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 603
    return-void
.end method

.method private registerForBroadcast()V
    .locals 3

    .line 1200
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1201
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1202
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1203
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1204
    const-string v1, "com.mediatek.intent.action.LOCATION_HANDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1205
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1206
    return-void
.end method

.method private registerIndication()V
    .locals 4

    .line 1210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mSimCount:I

    if-ge v0, v1, :cond_0

    .line 1211
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v1, v1, v0

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/mediatek/wfo/ril/MwiRIL;->registerRequestGeoLocation(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1214
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private removePackageInLocationSettingsWhitelist()V
    .locals 10

    .line 1073
    const-string v0, "location_ignore_settings_package_whitelist"

    .line 1075
    .local v0, "LOCATION_IGNORE_SETTINGS_PACKAGE_WHITELIST":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1077
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    .line 1078
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1077
    const-string v3, "location_ignore_settings_package_whitelist"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1080
    .local v2, "whitelist":Ljava/lang/String;
    const/4 v4, -0x1

    .line 1081
    .local v4, "index":I
    const-string v5, ""

    .line 1082
    .local v5, "outStr":Ljava/lang/String;
    const/4 v6, -0x1

    if-eqz v2, :cond_1

    .line 1083
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1084
    const-string v7, ""

    if-eq v4, v6, :cond_0

    .line 1085
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1087
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1088
    if-eq v4, v6, :cond_1

    .line 1089
    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1094
    :cond_1
    :goto_0
    if-eq v4, v6, :cond_2

    .line 1095
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remove WFC in location setting whitelist:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1096
    iget-object v6, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mContext:Landroid/content/Context;

    .line 1097
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1096
    invoke-static {v6, v3, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1101
    :cond_2
    return-void
.end method

.method private requestLocationFromNetworkLocation()Z
    .locals 11

    .line 994
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "WfcLocationHandler"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 995
    const-string v0, "requestLocationFromNetworkLocation failed: empty locationManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return v2

    .line 1000
    :cond_0
    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1001
    const-string v0, "requestLocationFromNetworkLocation failed: NETWORK_PROVIDER not ready"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    return v2

    .line 1006
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->isCtaNotAllow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1007
    const-string v0, "requestLocationFromNetworkLocation failed: CTA not allow"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    return v2

    .line 1011
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->checkLocationProxyAppPermission()Z

    move-result v0

    .line 1012
    .local v0, "isProxyAppPermissionGranted":Z
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->isEccInProgress()Z

    move-result v4

    .line 1013
    .local v4, "isEcc":Z
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->isGetLocationAlways()Z

    move-result v5

    .line 1014
    .local v5, "isGetLocAlways":Z
    const/4 v6, 0x1

    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    move v7, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v7, v6

    .line 1015
    .local v7, "mustGetLocation":Z
    :goto_1
    if-eqz v7, :cond_5

    .line 1016
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->addPackageInLocationSettingsWhitelist()V

    .line 1018
    :cond_5
    if-nez v7, :cond_7

    if-eqz v0, :cond_6

    goto :goto_2

    .line 1032
    :cond_6
    const-string v3, "requestLocationFromNetworkLocation failed: is NOT in ECC & non-framework location proxy app is NOT granted"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    return v2

    .line 1019
    :cond_7
    :goto_2
    iget-boolean v8, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestRegistered:Z

    if-nez v8, :cond_8

    .line 1020
    sget v8, Lcom/mediatek/wfo/impl/WfcLocationHandler;->NETWORK_LOCATION_UPDATE_TIME:I

    int-to-long v8, v8

    const/4 v10, 0x0

    invoke-static {v3, v8, v9, v10, v2}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v2

    .line 1023
    .local v2, "request":Landroid/location/LocationRequest;
    invoke-virtual {v2, v6}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 1024
    invoke-virtual {v2, v7}, Landroid/location/LocationRequest;->setLocationSettingsIgnored(Z)Landroid/location/LocationRequest;

    .line 1025
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    iget-object v8, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationListener:Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;

    .line 1026
    invoke-virtual {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    .line 1025
    invoke-virtual {v3, v2, v8, v9}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1027
    iput-boolean v6, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationRequestRegistered:Z

    .line 1028
    const-string v3, "requestLocationFromNetworkLocation: success"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    .end local v2    # "request":Landroid/location/LocationRequest;
    :cond_8
    return v6
.end method

.method private saveLocationCache(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V
    .locals 14
    .param p1, "location"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveLocationCache, location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WfcLocationHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mDeviceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 888
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 890
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccountId:I

    const-string v4, "key_accountid"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 891
    iget v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mBroadcastFlag:I

    const-string v4, "key_broadcastflag"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 893
    iget-wide v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLatitude:D

    double-to-float v3, v3

    const-string v4, "key_latitude"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 894
    iget-wide v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLongitude:D

    double-to-float v3, v3

    const-string v4, "key_longitude"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 895
    iget v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccuracy:F

    const-string v4, "key_accuracy"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 897
    iget-object v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    const-string v4, "key_method"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 898
    iget-object v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    const-string v4, "key_city"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 899
    iget-object v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    const-string v4, "key_state"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 900
    iget-object v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    const-string v4, "key_zip"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 901
    iget-object v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    const-string v4, "key_countrycode"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 903
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 904
    const-string v3, "Failed to commit saveLocationCache"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_0
    new-instance v1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v13}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    .line 908
    .local v1, "tmplocation":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    invoke-direct {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getLocationCache(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 909
    return-void
.end method

.method private setCountryCode(Ljava/lang/String;)V
    .locals 11
    .param p1, "iso"    # Ljava/lang/String;

    .line 1194
    new-instance v10, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    .line 1195
    .local v0, "info":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    iput-object p1, v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 1196
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setLocationInfo(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 1197
    return-void
.end method

.method private setLocationCacheEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 867
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mDeviceContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 868
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 870
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "key_ocation_cache"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set location cache enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WfcLocationHandler"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 873
    const-string v2, "Failed to commit location cache"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_0
    return-void
.end method

.method private setLocationEnabled()V
    .locals 5

    .line 1117
    const/16 v0, 0xc1d

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1119
    .local v0, "result":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLocationEnabled(): last location setting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLastLocationSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", new location setting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1123
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    sget-object v2, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->WFC_SETTING_LOCATION_SETTING:Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;

    invoke-virtual {v2}, Lcom/mediatek/wfo/ril/MwiRIL$WfcConfigType;->ordinal()I

    move-result v2

    .line 1124
    iget-boolean v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationSetting:Z

    if-eqz v3, :cond_0

    const-string v3, "1"

    goto :goto_0

    :cond_0
    const-string v3, "0"

    .line 1123
    :goto_0
    const-string v4, "locenable"

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->setWfcConfig(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1127
    iget-boolean v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationSetting:Z

    iput-boolean v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLastLocationSetting:Z

    .line 1128
    return-void
.end method

.method private setLocationInfo(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V
    .locals 14
    .param p1, "info"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 766
    iget-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    const-string v0, "Unknown"

    iput-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    .line 771
    const-string v2, "HK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 772
    :cond_2
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    iput-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    goto :goto_0

    .line 773
    :cond_3
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 774
    invoke-static {v0}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 776
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getSimCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    goto :goto_0

    .line 777
    :cond_4
    iget-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 779
    iget-object v0, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    .line 781
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocationInfo info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPlmnCountryCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WfcLocationHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/16 v0, 0xc1c

    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 784
    .local v0, "result":Landroid/os/Message;
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getMwiRil()Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v1

    iget v2, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccountId:I

    .line 785
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mBroadcastFlag:I

    .line 786
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLatitude:D

    .line 787
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mLongitude:D

    .line 788
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mAccuracy:F

    .line 789
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    iget-object v8, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    iget-object v9, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    iget-object v10, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    iget-object v11, p1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 795
    invoke-static {}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->getUeWlanMacAddr()Ljava/lang/String;

    move-result-object v12

    .line 784
    move-object v13, v0

    invoke-virtual/range {v1 .. v13}, Lcom/mediatek/wfo/ril/MwiRIL;->setLocationInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 796
    invoke-direct {p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->pollLocationInfo()V

    .line 797
    return-void
.end method

.method private utGeoLocationRequest()V
    .locals 11

    .line 1104
    new-instance v10, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-wide v5, 0x406a800000000000L    # 212.0

    const-wide v7, 0x4062600000000000L    # 147.0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    .line 1106
    .local v0, "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 1107
    return-void
.end method

.method private utNetworkLocationRequest()V
    .locals 11

    .line 1110
    new-instance v10, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    .line 1112
    .local v0, "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    invoke-direct {p0, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 1113
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 484
    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .line 319
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: msg= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->messageToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 320
    iget v0, v12, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v13, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 423
    :pswitch_0
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 424
    .local v0, "info":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->requestLocationFromNetworkLocation()Z

    move-result v2

    if-nez v2, :cond_b

    .line 425
    iget v2, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationRetry:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationRetry:I

    if-lez v2, :cond_0

    .line 426
    const-string v2, "EVENT_RETRY_NETWORK_LOCATION_REQUEST retry."

    invoke-virtual {v11, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 427
    const/16 v2, 0xbc4

    .line 428
    invoke-virtual {v11, v2, v1, v1, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    .line 427
    invoke-virtual {v11, v1, v2, v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3

    .line 431
    :cond_0
    const-string v1, "EVENT_RETRY_NETWORK_LOCATION_REQUEST retry fail, skip."

    invoke-virtual {v11, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 432
    iget-object v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 433
    sget v1, Lcom/mediatek/wfo/impl/WfcLocationHandler;->MAX_NETWORK_LOCATION_RETRY:I

    iput v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkLocationRetry:I

    goto/16 :goto_3

    .line 402
    .end local v0    # "info":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    :pswitch_1
    iget v0, v12, Landroid/os/Message;->arg1:I

    .line 403
    .local v0, "cacheEnable":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WfcLocationHandler"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v2, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mDeviceContext:Landroid/content/Context;

    .line 405
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 406
    .local v14, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 407
    .local v15, "editor":Landroid/content/SharedPreferences$Editor;
    if-ne v0, v13, :cond_1

    .line 408
    new-instance v10, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/16 v16, 0x0

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v13, v10

    move/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    invoke-direct {v11, v13}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getLocationCache(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 409
    const/4 v1, 0x1

    invoke-direct {v11, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setLocationCacheEnable(Z)V

    .line 410
    new-instance v13, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    const/16 v4, 0x8

    const/4 v10, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    .line 412
    .local v1, "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    invoke-direct {v11, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->proccessLocationFromNetwork(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 413
    .end local v1    # "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    goto/16 :goto_3

    .line 414
    :cond_1
    invoke-direct {v11, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setLocationCacheEnable(Z)V

    .line 415
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_2

    .line 416
    const-string v1, "Failed to commit location cache"

    invoke-virtual {v11, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 418
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->cancelNetworkLocationRequest()V

    .line 420
    goto/16 :goto_3

    .line 367
    .end local v0    # "cacheEnable":I
    .end local v14    # "sp":Landroid/content/SharedPreferences;
    .end local v15    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_2
    iget-object v0, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    iput-boolean v0, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationSetting:Z

    .line 369
    iget-boolean v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLastLocationSetting:Z

    if-eq v0, v1, :cond_3

    .line 370
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setLocationEnabled()V

    goto/16 :goto_3

    .line 372
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Same location setting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 374
    goto/16 :goto_3

    .line 336
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->handleAllRetryLocationRequest()V

    .line 337
    goto/16 :goto_3

    .line 333
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->handleRetryLocationRequest(Landroid/os/Message;)V

    .line 334
    goto/16 :goto_3

    .line 379
    :pswitch_5
    new-instance v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 380
    goto/16 :goto_3

    .line 350
    :pswitch_6
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 351
    .local v0, "iso":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 352
    iget-object v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 354
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setCountryCode(Ljava/lang/String;)V

    goto :goto_1

    .line 355
    :cond_4
    iget-object v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 356
    iget-object v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkAvailable:Z

    if-eqz v1, :cond_5

    goto :goto_0

    .line 360
    :cond_5
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setCountryCode(Ljava/lang/String;)V

    goto :goto_1

    .line 358
    :cond_6
    :goto_0
    new-instance v13, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, v13

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;IIIDDF)V

    invoke-direct {v11, v13}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->dispatchLocationRequest(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 363
    :cond_7
    :goto_1
    iput-object v0, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mPlmnCountryCode:Ljava/lang/String;

    goto :goto_3

    .line 345
    .end local v0    # "iso":Ljava/lang/String;
    :pswitch_7
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 346
    .local v0, "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->setLocationInfo(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)V

    .line 347
    goto :goto_3

    .line 340
    .end local v0    # "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    :pswitch_8
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .line 341
    .local v0, "location":Landroid/location/Location;
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->handleNetworkLocationUpdate(Landroid/location/Location;)V

    .line 342
    goto :goto_3

    .line 382
    .end local v0    # "location":Landroid/location/Location;
    :pswitch_9
    iget-object v1, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mLocationTimeout:Z

    .line 384
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    iget-object v0, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    if-eqz v0, :cond_8

    .line 386
    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->onLocationTimeout()V

    goto :goto_2

    .line 388
    :cond_8
    const-string v0, "WfcLocationHandler"

    const-string v1, "EVENT_GET_LAST_KNOWN_LOCATION: WfcHandler null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_2
    iget-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 391
    .local v0, "info":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    invoke-direct {v11, v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->getLastKnownLocation(Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;)Z

    move-result v1

    .line 393
    .local v1, "getLocationSuccess":Z
    if-eqz v1, :cond_b

    .line 394
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->cancelNetworkLocationRequest()V

    goto :goto_3

    .line 384
    .end local v0    # "info":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    .end local v1    # "getLocationSuccess":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 322
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->isCtaNotAllow()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 323
    return-void

    .line 325
    :cond_9
    iget-object v0, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, v11, Lcom/mediatek/wfo/impl/WfcLocationHandler;->mNetworkAvailable:Z

    if-nez v0, :cond_a

    .line 326
    const-string v0, "WfcLocationHandler"

    const-string v1, "Wi-Fi isn\'t connected and network unavailable."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->addRetryLocationRequest(Landroid/os/Message;)V

    .line 328
    return-void

    .line 330
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->handleLocationRequest(Landroid/os/Message;)V

    .line 331
    nop

    .line 441
    :cond_b
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 528
    sget-boolean v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->USR_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mediatek/wfo/impl/WfcLocationHandler;->TELDBG:Z

    if-eqz v0, :cond_1

    .line 529
    :cond_0
    const-string v0, "WfcLocationHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_1
    return-void
.end method
