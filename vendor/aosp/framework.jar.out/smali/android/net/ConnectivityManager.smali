.class public Landroid/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityManager$RestrictBackgroundStatus;,
        Landroid/net/ConnectivityManager$MultipathPreference;,
        Landroid/net/ConnectivityManager$CallbackHandler;,
        Landroid/net/ConnectivityManager$TooManyRequestsException;,
        Landroid/net/ConnectivityManager$Errors;,
        Landroid/net/ConnectivityManager$NetworkCallback;,
        Landroid/net/ConnectivityManager$OnStartTetheringCallback;,
        Landroid/net/ConnectivityManager$OnNetworkActiveListener;,
        Landroid/net/ConnectivityManager$PacketKeepalive;,
        Landroid/net/ConnectivityManager$PacketKeepaliveCallback;,
        Landroid/net/ConnectivityManager$LegacyRequest;
    }
.end annotation


# static fields
.field public static final ACTION_BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_CAPTIVE_PORTAL_SIGN_IN:Ljava/lang/String; = "android.net.conn.CAPTIVE_PORTAL"

.field public static final ACTION_CAPTIVE_PORTAL_TEST_COMPLETED:Ljava/lang/String; = "android.net.conn.CAPTIVE_PORTAL_TEST_COMPLETED"

.field public static final ACTION_DATA_ACTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.DATA_ACTIVITY_CHANGE"

.field public static final ACTION_PROMPT_LOST_VALIDATION:Ljava/lang/String; = "android.net.conn.PROMPT_LOST_VALIDATION"

.field public static final ACTION_PROMPT_UNVALIDATED:Ljava/lang/String; = "android.net.conn.PROMPT_UNVALIDATED"

.field public static final ACTION_RESTRICT_BACKGROUND_CHANGED:Ljava/lang/String; = "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

.field public static final ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"

.field private static final ALREADY_UNREGISTERED:Landroid/net/NetworkRequest;

.field private static final BASE:I = 0x80000

.field public static final CALLBACK_AVAILABLE:I = 0x80002

.field public static final CALLBACK_CAP_CHANGED:I = 0x80006

.field public static final CALLBACK_IP_CHANGED:I = 0x80007

.field public static final CALLBACK_LOSING:I = 0x80003

.field public static final CALLBACK_LOST:I = 0x80004

.field public static final CALLBACK_PRECHECK:I = 0x80001

.field public static final CALLBACK_RESUMED:I = 0x8000a

.field public static final CALLBACK_SUSPENDED:I = 0x80009

.field public static final CALLBACK_UNAVAIL:I = 0x80005

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONNECTIVITY_ACTION_SUPL:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE_SUPL"

.field public static final DEFAULT_NETWORK_PREFERENCE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EXPIRE_LEGACY_REQUEST:I = 0x80008

.field public static final EXTRA_ACTIVE_LOCAL_ONLY:Ljava/lang/String; = "localOnlyArray"

.field public static final EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "tetherArray"

.field public static final EXTRA_ADD_TETHER_TYPE:Ljava/lang/String; = "extraAddTetherType"

.field public static final EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"

.field public static final EXTRA_CAPTIVE_PORTAL:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL"

.field public static final EXTRA_CAPTIVE_PORTAL_BACKUP_URL:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL_BACKUP_URL"

.field public static final EXTRA_CAPTIVE_PORTAL_PROBE_SPEC:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL_PROBE_SPEC"

.field public static final EXTRA_CAPTIVE_PORTAL_REDIRECT_URL:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL_REDIRECT_URL"

.field public static final EXTRA_CAPTIVE_PORTAL_URL:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL_URL"

.field public static final EXTRA_CAPTIVE_PORTAL_USER_AGENT:Ljava/lang/String; = "android.net.extra.CAPTIVE_PORTAL_USER_AGENT"

.field public static final EXTRA_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final EXTRA_ERRORED_TETHER:Ljava/lang/String; = "erroredArray"

.field public static final EXTRA_EXTRA_INFO:Ljava/lang/String; = "extraInfo"

.field public static final EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field public static final EXTRA_IS_ACTIVE:Ljava/lang/String; = "isActive"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "captivePortal"

.field public static final EXTRA_IS_FAILOVER:Ljava/lang/String; = "isFailover"

.field public static final EXTRA_NETWORK:Ljava/lang/String; = "android.net.extra.NETWORK"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_NETWORK_REQUEST:Ljava/lang/String; = "android.net.extra.NETWORK_REQUEST"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_NO_CONNECTIVITY:Ljava/lang/String; = "noConnectivity"

.field public static final EXTRA_OTHER_NETWORK_INFO:Ljava/lang/String; = "otherNetwork"

.field public static final EXTRA_PROVISION_CALLBACK:Ljava/lang/String; = "extraProvisionCallback"

.field public static final EXTRA_REALTIME_NS:Ljava/lang/String; = "tsNanos"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_REM_TETHER_TYPE:Ljava/lang/String; = "extraRemTetherType"

.field public static final EXTRA_RUN_PROVISION:Ljava/lang/String; = "extraRunProvision"

.field public static final EXTRA_SET_ALARM:Ljava/lang/String; = "extraSetAlarm"

.field public static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field private static final LISTEN:I = 0x1

.field public static final MAX_NETWORK_TYPE:I = 0x11

.field public static final MAX_RADIO_TYPE:I = 0x11

.field private static final MIN_NETWORK_TYPE:I = 0x0

.field public static final MULTIPATH_PREFERENCE_HANDOVER:I = 0x1

.field public static final MULTIPATH_PREFERENCE_PERFORMANCE:I = 0x4

.field public static final MULTIPATH_PREFERENCE_RELIABILITY:I = 0x2

.field public static final MULTIPATH_PREFERENCE_UNMETERED:I = 0x7

.field public static final NETID_UNSET:I = 0x0

.field public static final PRIVATE_DNS_DEFAULT_MODE_FALLBACK:Ljava/lang/String; = "off"

.field public static final PRIVATE_DNS_MODE_OFF:Ljava/lang/String; = "off"

.field public static final PRIVATE_DNS_MODE_OPPORTUNISTIC:Ljava/lang/String; = "opportunistic"

.field public static final PRIVATE_DNS_MODE_PROVIDER_HOSTNAME:Ljava/lang/String; = "hostname"

.field private static final REQUEST:I = 0x2

.field public static final REQUEST_ID_UNSET:I = 0x0

.field public static final RESTRICT_BACKGROUND_STATUS_DISABLED:I = 0x1

.field public static final RESTRICT_BACKGROUND_STATUS_ENABLED:I = 0x3

.field public static final RESTRICT_BACKGROUND_STATUS_WHITELISTED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager"

.field public static final TETHERING_BLUETOOTH:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TETHERING_INVALID:I = -0x1

.field public static final TETHERING_USB:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TETHERING_WIFI:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TETHERING_WIGIG:I = 0x3

.field public static final TETHER_CONNECT_STATE_CHANGED:Ljava/lang/String; = "codeaurora.net.conn.TETHER_CONNECT_STATE_CHANGED"

.field public static final TETHER_ERROR_DISABLE_NAT_ERROR:I = 0x9

.field public static final TETHER_ERROR_ENABLE_NAT_ERROR:I = 0x8

.field public static final TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa

.field public static final TETHER_ERROR_MASTER_ERROR:I = 0x5

.field public static final TETHER_ERROR_NO_ERROR:I = 0x0

.field public static final TETHER_ERROR_PROVISION_FAILED:I = 0xb

.field public static final TETHER_ERROR_SERVICE_UNAVAIL:I = 0x2

.field public static final TETHER_ERROR_TETHER_IFACE_ERROR:I = 0x6

.field public static final TETHER_ERROR_UNAVAIL_IFACE:I = 0x4

.field public static final TETHER_ERROR_UNKNOWN_IFACE:I = 0x1

.field public static final TETHER_ERROR_UNSUPPORTED:I = 0x3

.field public static final TETHER_ERROR_UNTETHER_IFACE_ERROR:I = 0x7

.field public static final TYPE_BLUETOOTH:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_DUMMY:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_ETHERNET:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_MOBILE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_MOBILE_CBS:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_MOBILE_DUN:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_MOBILE_EMERGENCY:I = 0xf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_MOBILE_FOTA:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_MOBILE_HIPRI:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_MOBILE_IA:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_MOBILE_IMS:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_MOBILE_MMS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_MOBILE_SUPL:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_PROXY:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_VPN:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_WIFI:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_WIFI_P2P:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_WIMAX:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final VDBG_STALL:Z

.field private static sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

.field private static final sCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/NetworkRequest;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Landroid/net/ConnectivityManager;

.field private static sLegacyRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/NetworkCapabilities;",
            "Landroid/net/ConnectivityManager$LegacyRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLegacyTypeToCapability:Landroid/util/SparseIntArray;

.field private static final sLegacyTypeToTransport:Landroid/util/SparseIntArray;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private mNPManager:Landroid/net/INetworkPolicyManager;

.field private final mNetworkActivityListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/ConnectivityManager$OnNetworkActiveListener;",
            "Landroid/os/INetworkActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/net/IConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 94
    const-string/jumbo v0, "persist.radio.dbg.opdatastall"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/net/ConnectivityManager;->VDBG_STALL:Z

    .line 711
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 712
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Landroid/net/ConnectivityManager;->ALREADY_UNREGISTERED:Landroid/net/NetworkRequest;

    .line 1544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    .line 1612
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    .line 1614
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1615
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1616
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1617
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/16 v4, 0xa

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1618
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1619
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/16 v6, 0xb

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1620
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1621
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/4 v8, 0x3

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1622
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/4 v9, 0x1

    invoke-virtual {v0, v9, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1623
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/16 v10, 0xd

    invoke-virtual {v0, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1624
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/4 v11, 0x7

    invoke-virtual {v0, v11, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1625
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/16 v11, 0x9

    invoke-virtual {v0, v11, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1628
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    .line 1630
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1631
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1632
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1633
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1634
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1635
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 1636
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 3081
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IConnectivityManager;

    .line 2043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1961
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    .line 2044
    const-string/jumbo v0, "missing context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    .line 2045
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 2046
    sput-object p0, Landroid/net/ConnectivityManager;->sInstance:Landroid/net/ConnectivityManager;

    .line 2047
    return-void
.end method

.method static synthetic access$200(Landroid/net/ConnectivityManager;)Landroid/net/IConnectivityManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/ConnectivityManager;

    .line 89
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/ConnectivityManager;Landroid/net/NetworkCapabilities;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/ConnectivityManager;
    .param p1, "x1"    # Landroid/net/NetworkCapabilities;
    .param p2, "x2"    # I

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->expireRequest(Landroid/net/NetworkCapabilities;I)V

    return-void
.end method

.method static synthetic access$800()Ljava/util/HashMap;
    .locals 1

    .line 89
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method private static checkCallbackNotNull(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 3384
    const-string/jumbo v0, "null NetworkCallback"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3385
    return-void
.end method

.method private checkLegacyRoutingApiAccess()V
    .locals 2

    .line 3834
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    const-string v1, "com.android.permission.INJECT_OMADM_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3836
    return-void

    .line 3839
    :cond_0
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->unsupportedStartingFrom(I)V

    .line 3840
    return-void
.end method

.method private static checkPendingIntentNotNull(Landroid/app/PendingIntent;)V
    .locals 1
    .param p0, "intent"    # Landroid/app/PendingIntent;

    .line 3380
    const-string v0, "PendingIntent cannot be null."

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3381
    return-void
.end method

.method private static checkTimeout(I)V
    .locals 1
    .param p0, "timeoutMs"    # I

    .line 3388
    const-string/jumbo v0, "timeoutMs must be strictly positive."

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 3389
    return-void
.end method

.method private static convertServiceException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;
    .locals 3
    .param p0, "e"    # Landroid/os/ServiceSpecificException;

    .line 2941
    iget v0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2945
    const-string v0, "ConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown service error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 2943
    :cond_0
    new-instance v0, Landroid/net/ConnectivityManager$TooManyRequestsException;

    invoke-direct {v0}, Landroid/net/ConnectivityManager$TooManyRequestsException;-><init>()V

    return-object v0
.end method

.method public static final enforceChangePermission(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2059
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2060
    .local v0, "uid":I
    nop

    .line 2061
    invoke-static {p0, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 2060
    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings;->checkAndNoteChangeNetworkStateOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    .line 2062
    return-void
.end method

.method public static final enforceTetherChangePermission(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingPkg"    # Ljava/lang/String;

    .line 2066
    const-string v0, "Context cannot be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    const-string v0, "callingPkg cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2069
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2073
    const-string v0, "android.permission.TETHER_PRIVILEGED"

    const-string v1, "ConnectivityService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2076
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2079
    .local v0, "uid":I
    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    .line 2082
    .end local v0    # "uid":I
    :goto_0
    return-void
.end method

.method private expireRequest(Landroid/net/NetworkCapabilities;I)V
    .locals 4
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;
    .param p2, "sequenceNum"    # I

    .line 1562
    const/4 v0, -0x1

    .line 1563
    .local v0, "ourSeqNum":I
    sget-object v1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v1

    .line 1564
    :try_start_0
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1565
    .local v2, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    .line 1566
    :cond_0
    iget v3, v2, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    move v0, v3

    .line 1567
    iget v3, v2, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    if-ne v3, p2, :cond_1

    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z

    .line 1568
    .end local v2    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1569
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expireRequest with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    return-void

    .line 1568
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private findRequestForFeature(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;
    .locals 3
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .line 1548
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 1549
    :try_start_0
    sget-object v1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1550
    .local v1, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    monitor-exit v0

    return-object v2

    .line 1551
    .end local v1    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :cond_0
    monitor-exit v0

    .line 1552
    const/4 v0, 0x0

    return-object v0

    .line 1551
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static from(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 2051
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getCallbackName(I)Ljava/lang/String;
    .locals 1
    .param p0, "whichCallback"    # I

    .line 2974
    packed-switch p0, :pswitch_data_0

    .line 2986
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2984
    :pswitch_0
    const-string v0, "CALLBACK_RESUMED"

    return-object v0

    .line 2983
    :pswitch_1
    const-string v0, "CALLBACK_SUSPENDED"

    return-object v0

    .line 2982
    :pswitch_2
    const-string v0, "EXPIRE_LEGACY_REQUEST"

    return-object v0

    .line 2981
    :pswitch_3
    const-string v0, "CALLBACK_IP_CHANGED"

    return-object v0

    .line 2980
    :pswitch_4
    const-string v0, "CALLBACK_CAP_CHANGED"

    return-object v0

    .line 2979
    :pswitch_5
    const-string v0, "CALLBACK_UNAVAIL"

    return-object v0

    .line 2978
    :pswitch_6
    const-string v0, "CALLBACK_LOST"

    return-object v0

    .line 2977
    :pswitch_7
    const-string v0, "CALLBACK_LOSING"

    return-object v0

    .line 2976
    :pswitch_8
    const-string v0, "CALLBACK_AVAILABLE"

    return-object v0

    .line 2975
    :pswitch_9
    const-string v0, "CALLBACK_PRECHECK"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x80001
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

.method private getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;
    .locals 3

    .line 3073
    sget-object v0, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    .line 3074
    :try_start_0
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    if-nez v1, :cond_0

    .line 3075
    new-instance v1, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-static {}, Landroid/net/ConnectivityThread;->getInstanceLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Looper;)V

    sput-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    .line 3077
    :cond_0
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbackHandler:Landroid/net/ConnectivityManager$CallbackHandler;

    monitor-exit v0

    return-object v1

    .line 3078
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getInstance()Landroid/net/ConnectivityManager;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2101
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2104
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstanceOrNull()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0

    .line 2102
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ConnectivityManager yet constructed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getInstanceOrNull()Landroid/net/ConnectivityManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2091
    sget-object v0, Landroid/net/ConnectivityManager;->sInstance:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .locals 2

    .line 1951
    monitor-enter p0

    .line 1952
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    if-eqz v0, :cond_0

    .line 1953
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    monitor-exit p0

    return-object v0

    .line 1955
    :cond_0
    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1956
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    .line 1957
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNMService:Landroid/os/INetworkManagementService;

    monitor-exit p0

    return-object v1

    .line 1958
    .end local v0    # "b":Landroid/os/IBinder;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getNetworkPolicyManager()Landroid/net/INetworkPolicyManager;
    .locals 1

    .line 3904
    monitor-enter p0

    .line 3905
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mNPManager:Landroid/net/INetworkPolicyManager;

    if-eqz v0, :cond_0

    .line 3906
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mNPManager:Landroid/net/INetworkPolicyManager;

    monitor-exit p0

    return-object v0

    .line 3908
    :cond_0
    const-string/jumbo v0, "netpolicy"

    .line 3909
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3908
    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mNPManager:Landroid/net/INetworkPolicyManager;

    .line 3910
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mNPManager:Landroid/net/INetworkPolicyManager;

    monitor-exit p0

    return-object v0

    .line 3911
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 793
    packed-switch p0, :pswitch_data_0

    .line 833
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 831
    :pswitch_0
    const-string v0, "VPN"

    return-object v0

    .line 829
    :pswitch_1
    const-string v0, "PROXY"

    return-object v0

    .line 827
    :pswitch_2
    const-string v0, "MOBILE_EMERGENCY"

    return-object v0

    .line 825
    :pswitch_3
    const-string v0, "MOBILE_IA"

    return-object v0

    .line 823
    :pswitch_4
    const-string v0, "WIFI_P2P"

    return-object v0

    .line 821
    :pswitch_5
    const-string v0, "MOBILE_CBS"

    return-object v0

    .line 819
    :pswitch_6
    const-string v0, "MOBILE_IMS"

    return-object v0

    .line 817
    :pswitch_7
    const-string v0, "MOBILE_FOTA"

    return-object v0

    .line 815
    :pswitch_8
    const-string v0, "ETHERNET"

    return-object v0

    .line 813
    :pswitch_9
    const-string v0, "DUMMY"

    return-object v0

    .line 811
    :pswitch_a
    const-string v0, "BLUETOOTH"

    return-object v0

    .line 809
    :pswitch_b
    const-string v0, "WIMAX"

    return-object v0

    .line 807
    :pswitch_c
    const-string v0, "MOBILE_HIPRI"

    return-object v0

    .line 805
    :pswitch_d
    const-string v0, "MOBILE_DUN"

    return-object v0

    .line 803
    :pswitch_e
    const-string v0, "MOBILE_SUPL"

    return-object v0

    .line 801
    :pswitch_f
    const-string v0, "MOBILE_MMS"

    return-object v0

    .line 799
    :pswitch_10
    const-string v0, "WIFI"

    return-object v0

    .line 797
    :pswitch_11
    const-string v0, "MOBILE"

    return-object v0

    .line 795
    :pswitch_12
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method public static getProcessDefaultNetwork()Landroid/net/Network;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3809
    invoke-static {}, Landroid/net/NetworkUtils;->getBoundNetworkForProcess()I

    move-result v0

    .line 3810
    .local v0, "netId":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 3811
    :cond_0
    new-instance v1, Landroid/net/Network;

    invoke-direct {v1, v0}, Landroid/net/Network;-><init>(I)V

    return-object v1
.end method

.method private inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I
    .locals 6
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .line 1434
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 1435
    return v0

    .line 1438
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1439
    return v0

    .line 1443
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1447
    return v0

    .line 1450
    :cond_2
    const/4 v3, 0x0

    .line 1451
    .local v3, "type":Ljava/lang/String;
    const/4 v4, -0x1

    .line 1453
    .local v4, "result":I
    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1454
    const-string v3, "enableCBS"

    .line 1455
    const/16 v4, 0xc

    goto :goto_0

    .line 1456
    :cond_3
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1457
    const-string v3, "enableIMS"

    .line 1458
    const/16 v4, 0xb

    goto :goto_0

    .line 1459
    :cond_4
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1460
    const-string v3, "enableFOTA"

    .line 1461
    const/16 v4, 0xa

    goto :goto_0

    .line 1462
    :cond_5
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1463
    const-string v3, "enableDUN"

    .line 1464
    const/4 v4, 0x4

    goto :goto_0

    .line 1465
    :cond_6
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1466
    const-string v3, "enableSUPL"

    .line 1467
    const/4 v4, 0x3

    goto :goto_0

    .line 1473
    :cond_7
    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1474
    const-string v3, "enableHIPRI"

    .line 1475
    const/4 v4, 0x5

    .line 1477
    :cond_8
    :goto_0
    if-eqz v3, :cond_9

    .line 1478
    invoke-direct {p0, v1, v3}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 1479
    .local v1, "testCap":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1, p1}, Landroid/net/NetworkCapabilities;->equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1, p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1480
    return v4

    .line 1483
    .end local v1    # "testCap":Landroid/net/NetworkCapabilities;
    :cond_9
    return v0
.end method

.method public static isNetworkTypeMobile(I)Z
    .locals 1
    .param p0, "networkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 847
    packed-switch p0, :pswitch_data_0

    .line 860
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 858
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isNetworkTypeValid(I)Z
    .locals 1
    .param p0, "networkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 779
    if-ltz p0, :cond_0

    const/16 v0, 0x11

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNetworkTypeWifi(I)Z
    .locals 2
    .param p0, "networkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 872
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    .line 877
    const/4 v0, 0x0

    return v0

    .line 875
    :cond_0
    return v0
.end method

.method private legacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I
    .locals 7
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .line 1487
    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1488
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    const/16 v3, 0xc

    if-eqz v2, :cond_1

    .line 1489
    return v3

    .line 1491
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1492
    const/16 v0, 0xb

    return v0

    .line 1494
    :cond_2
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1495
    const/16 v0, 0xa

    return v0

    .line 1497
    :cond_3
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1498
    return v2

    .line 1500
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1501
    return v4

    .line 1503
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1504
    return v5

    .line 1506
    :cond_6
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1507
    return v1

    .line 1509
    :cond_7
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1510
    const/16 v0, 0xd

    return v0

    .line 1512
    :cond_8
    return v0
.end method

.method private networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 8
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .line 1382
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1383
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "enableDUNAlways"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_1

    :sswitch_1
    const-string v1, "enableSUPL"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_2
    const-string v1, "enableFOTA"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_3
    const-string v1, "enableMMS"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "enableIMS"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_5
    const-string v3, "enableDUN"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :sswitch_6
    const-string v1, "enableCBS"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_7
    const-string v1, "enableHIPRI"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 1400
    return-object v0

    .line 1398
    :pswitch_0
    invoke-static {v6}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 1396
    :pswitch_1
    invoke-static {v7}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 1394
    :pswitch_2
    const/16 v0, 0xb

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 1392
    :pswitch_3
    invoke-static {v5}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 1390
    :pswitch_4
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 1388
    :pswitch_5
    invoke-static {v4}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 1385
    :pswitch_6
    const/16 v0, 0xc

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 1402
    :cond_1
    if-ne p1, v1, :cond_2

    const-string/jumbo v1, "p2p"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1403
    const/16 v0, 0xd

    invoke-static {v0}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0

    .line 1405
    :cond_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x568229bd -> :sswitch_7
        -0x25a6b48f -> :sswitch_6
        -0x25a6ae86 -> :sswitch_5
        -0x25a69cb4 -> :sswitch_4
        -0x25a68db0 -> :sswitch_3
        0x70d1b0f9 -> :sswitch_2
        0x70d7afe1 -> :sswitch_1
        0x77254c29 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;
    .locals 6
    .param p0, "type"    # I

    .line 1650
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1653
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    const/4 v1, -0x1

    .line 1654
    .local v1, "NOT_FOUND":I
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyTypeToTransport:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 1655
    .local v2, "transport":I
    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown legacy type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1656
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 1659
    sget-object v3, Landroid/net/ConnectivityManager;->sLegacyTypeToCapability:Landroid/util/SparseIntArray;

    const/16 v4, 0xc

    invoke-virtual {v3, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1661
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    .line 1662
    return-object v0
.end method

.method private removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .line 1603
    sget-object v0, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 1604
    :try_start_0
    sget-object v1, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1605
    .local v1, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1606
    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1607
    :cond_0
    iget-object v0, v1, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1608
    invoke-static {v1}, Landroid/net/ConnectivityManager$LegacyRequest;->access$000(Landroid/net/ConnectivityManager$LegacyRequest;)V

    .line 1609
    const/4 v0, 0x1

    return v0

    .line 1605
    .end local v1    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private renewRequestLocked(Landroid/net/ConnectivityManager$LegacyRequest;)V
    .locals 3
    .param p1, "l"    # Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1556
    iget v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    .line 1557
    const-string v0, "ConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "renewing request to seqNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    iget-object v0, p1, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget v1, p1, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    iget v2, p1, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    invoke-direct {p0, v0, v1, v2}, Landroid/net/ConnectivityManager;->sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V

    .line 1559
    return-void
.end method

.method private requestNetworkForFeatureLocked(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;
    .locals 11
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .line 1573
    const/4 v0, -0x1

    .line 1574
    .local v0, "delay":I
    invoke-direct {p0, p1}, Landroid/net/ConnectivityManager;->legacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v1

    .line 1576
    .local v1, "type":I
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, v1}, Landroid/net/IConnectivityManager;->getRestoreDefaultNetworkDelay(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1579
    nop

    .line 1580
    new-instance v2, Landroid/net/ConnectivityManager$LegacyRequest;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Landroid/net/ConnectivityManager$LegacyRequest;-><init>(Landroid/net/ConnectivityManager$1;)V

    move-object v10, v2

    .line 1581
    .local v10, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    iput-object p1, v10, Landroid/net/ConnectivityManager$LegacyRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1582
    iput v0, v10, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    .line 1583
    const/4 v2, 0x0

    iput v2, v10, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    .line 1584
    iget-object v4, v10, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 1585
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v8

    .line 1584
    move-object v2, p0

    move-object v3, p1

    move v7, v1

    invoke-direct/range {v2 .. v8}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;IIILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    move-result-object v2

    iput-object v2, v10, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    .line 1586
    iget-object v2, v10, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    if-nez v2, :cond_0

    return-object v9

    .line 1587
    :cond_0
    sget-object v2, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    iget v2, v10, Landroid/net/ConnectivityManager$LegacyRequest;->expireSequenceNumber:I

    invoke-direct {p0, p1, v2, v0}, Landroid/net/ConnectivityManager;->sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V

    .line 1589
    iget-object v2, v10, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    return-object v2

    .line 1577
    .end local v10    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    :catch_0
    move-exception v2

    .line 1578
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private sendExpireMsgForFeature(Landroid/net/NetworkCapabilities;II)V
    .locals 4
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;
    .param p2, "seqNum"    # I
    .param p3, "delay"    # I

    .line 1593
    if-ltz p3, :cond_0

    .line 1594
    const-string v0, "ConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sending expire msg with seqNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and delay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v0

    .line 1596
    .local v0, "handler":Landroid/net/ConnectivityManager$CallbackHandler;
    const v1, 0x80008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/net/ConnectivityManager$CallbackHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1597
    .local v1, "msg":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager$CallbackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1599
    .end local v0    # "handler":Landroid/net/ConnectivityManager$CallbackHandler;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;IIILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;
    .locals 15
    .param p1, "need"    # Landroid/net/NetworkCapabilities;
    .param p2, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "timeoutMs"    # I
    .param p4, "action"    # I
    .param p5, "legacyType"    # I
    .param p6, "handler"    # Landroid/net/ConnectivityManager$CallbackHandler;

    move-object v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p4

    .line 3089
    invoke-static/range {p2 .. p2}, Landroid/net/ConnectivityManager;->checkCallbackNotNull(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 3090
    const/4 v0, 0x1

    const/4 v2, 0x2

    if-eq v10, v2, :cond_1

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    const-string/jumbo v3, "null NetworkCapabilities"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3093
    :try_start_0
    sget-object v11, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3094
    :try_start_1
    invoke-static/range {p2 .. p2}, Landroid/net/ConnectivityManager$NetworkCallback;->access$900(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3095
    invoke-static/range {p2 .. p2}, Landroid/net/ConnectivityManager$NetworkCallback;->access$900(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v2

    sget-object v3, Landroid/net/ConnectivityManager;->ALREADY_UNREGISTERED:Landroid/net/NetworkRequest;

    if-eq v2, v3, :cond_2

    .line 3098
    const-string v2, "ConnectivityManager"

    const-string v3, "NetworkCallback was already registered"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    :cond_2
    new-instance v2, Landroid/os/Messenger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v12, p6

    :try_start_2
    invoke-direct {v2, v12}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    move-object v13, v2

    .line 3101
    .local v13, "messenger":Landroid/os/Messenger;
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    move-object v14, v2

    .line 3102
    .local v14, "binder":Landroid/os/Binder;
    if-ne v10, v0, :cond_3

    .line 3103
    iget-object v0, v1, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, v8, v13, v14}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v0

    .line 3103
    .local v0, "request":Landroid/net/NetworkRequest;
    goto :goto_2

    .line 3105
    .end local v0    # "request":Landroid/net/NetworkRequest;
    :cond_3
    iget-object v2, v1, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    move-object v3, v8

    move-object v4, v13

    move/from16 v5, p3

    move-object v6, v14

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/net/IConnectivityManager;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    move-result-object v0

    .line 3108
    .restart local v0    # "request":Landroid/net/NetworkRequest;
    :goto_2
    if-eqz v0, :cond_4

    .line 3109
    sget-object v2, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3111
    :cond_4
    invoke-static {v9, v0}, Landroid/net/ConnectivityManager$NetworkCallback;->access$902(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;

    .line 3112
    .end local v13    # "messenger":Landroid/os/Messenger;
    .end local v14    # "binder":Landroid/os/Binder;
    monitor-exit v11

    .line 3117
    nop

    .line 3116
    nop

    .line 3118
    return-object v0

    .line 3112
    .end local v0    # "request":Landroid/net/NetworkRequest;
    :catchall_0
    move-exception v0

    move-object/from16 v12, p6

    :goto_3
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3115
    :catch_0
    move-exception v0

    goto :goto_4

    .line 3113
    :catch_1
    move-exception v0

    goto :goto_5

    .line 3112
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 3115
    :catch_2
    move-exception v0

    move-object/from16 v12, p6

    .line 3116
    .local v0, "e":Landroid/os/ServiceSpecificException;
    :goto_4
    invoke-static {v0}, Landroid/net/ConnectivityManager;->convertServiceException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 3113
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_3
    move-exception v0

    move-object/from16 v12, p6

    .line 3114
    .local v0, "e":Landroid/os/RemoteException;
    :goto_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static setProcessDefaultNetwork(Landroid/net/Network;)Z
    .locals 5
    .param p0, "network"    # Landroid/net/Network;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3762
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/net/Network;->netId:I

    .line 3763
    .local v1, "netId":I
    :goto_0
    invoke-static {}, Landroid/net/NetworkUtils;->getBoundNetworkForProcess()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 3764
    return v3

    .line 3766
    :cond_1
    invoke-static {v1}, Landroid/net/NetworkUtils;->bindProcessToNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3770
    :try_start_0
    invoke-static {}, Landroid/net/ConnectivityManager;->getInstance()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3774
    goto :goto_1

    .line 3771
    :catch_0
    move-exception v0

    .line 3773
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "ConnectivityManager"

    const-string v4, "Can\'t set proxy properties"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3776
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 3779
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/event/NetworkEventDispatcher;->onNetworkConfigurationChanged()V

    .line 3780
    return v3

    .line 3782
    :cond_2
    return v0
.end method

.method public static setProcessDefaultNetworkForHostResolution(Landroid/net/Network;)Z
    .locals 1
    .param p0, "network"    # Landroid/net/Network;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3855
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/net/Network;->netId:I

    .line 3854
    :goto_0
    invoke-static {v0}, Landroid/net/NetworkUtils;->bindProcessToNetworkForHostResolution(I)Z

    move-result v0

    return v0
.end method

.method private unsupportedStartingFrom(I)V
    .locals 3
    .param p1, "version"    # I

    .line 3815
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3818
    return-void

    .line 3821
    :cond_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, p1, :cond_1

    .line 3825
    return-void

    .line 3822
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This method is not supported in target SDK version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and above"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public OPgetDnsInfo()[I
    .locals 4

    .line 2031
    :try_start_0
    sget-boolean v0, Landroid/net/ConnectivityManager;->VDBG_STALL:Z

    if-eqz v0, :cond_0

    const-string v0, "ConnectivityManager"

    const-string v1, "OP_DATA_STALL: OPgetDnsInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    :cond_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->OPgetDnsInfo()[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2033
    :catch_0
    move-exception v0

    .line 2034
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OP_DATA_STALL: OPgetDnsInfo() e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    const/4 v1, 0x0

    return-object v1
.end method

.method public addDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .locals 3
    .param p1, "l"    # Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    .line 1978
    new-instance v0, Landroid/net/ConnectivityManager$1;

    invoke-direct {v0, p0, p1}, Landroid/net/ConnectivityManager$1;-><init>(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V

    .line 1986
    .local v0, "rl":Landroid/os/INetworkActivityListener;
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/os/INetworkManagementService;->registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    .line 1987
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1990
    nop

    .line 1991
    return-void

    .line 1988
    :catch_0
    move-exception v1

    .line 1989
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public bindProcessToNetwork(Landroid/net/Network;)Z
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .line 3736
    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method public checkMobileProvisioning(I)I
    .locals 3
    .param p1, "suggestedTimeOutMs"    # I

    .line 2699
    const/4 v0, -0x1

    .line 2701
    .local v0, "timeOutMs":I
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->checkMobileProvisioning(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2704
    nop

    .line 2705
    return v0

    .line 2702
    :catch_0
    move-exception v1

    .line 2703
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public factoryReset()V
    .locals 2

    .line 3709
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->factoryReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3712
    nop

    .line 3713
    return-void

    .line 3710
    :catch_0
    move-exception v0

    .line 3711
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .line 1204
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveNetwork()Landroid/net/Network;
    .locals 2

    .line 949
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveNetworkForUid(I)Landroid/net/Network;
    .locals 1
    .param p1, "uid"    # I

    .line 969
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->getActiveNetworkForUid(IZ)Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkForUid(IZ)Landroid/net/Network;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z

    .line 975
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->getActiveNetworkForUid(IZ)Landroid/net/Network;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .line 930
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 1
    .param p1, "uid"    # I

    .line 1060
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z

    .line 1066
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1904
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1905
    :catch_0
    move-exception v0

    .line 1906
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1139
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1140
    :catch_0
    move-exception v0

    .line 1141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllNetworks()[Landroid/net/Network;
    .locals 2

    .line 1173
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 1041
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBackgroundDataSetting()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1882
    const/4 v0, 0x1

    return v0
.end method

.method public getBoundNetworkForProcess()Landroid/net/Network;
    .locals 1

    .line 3795
    invoke-static {}, Landroid/net/ConnectivityManager;->getProcessDefaultNetwork()Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getCaptivePortalServerUrl()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1279
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getCaptivePortalServerUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "userId"    # I

    .line 1186
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDefaultProxy()Landroid/net/ProxyInfo;
    .locals 1

    .line 2625
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .locals 2

    .line 2587
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2588
    :catch_0
    move-exception v0

    .line 2589
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 2492
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2493
    :catch_0
    move-exception v0

    .line 2494
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 2
    .param p1, "networkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1228
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1229
    :catch_0
    move-exception v0

    .line 1230
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 1244
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMobileDataEnabled()Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1916
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1917
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1919
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1920
    .local v1, "it":Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 1921
    .local v2, "subId":I
    const-string v3, "ConnectivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMobileDataEnabled()+ subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isUserDataEnabled(I)Z

    move-result v3

    .line 1923
    .local v3, "retVal":Z
    const-string v4, "ConnectivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMobileDataEnabled()- subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " retVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1925
    return v3

    .line 1926
    .end local v1    # "it":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "subId":I
    .end local v3    # "retVal":Z
    :catch_0
    move-exception v1

    .line 1927
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1930
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "ConnectivityManager"

    const-string v2, "getMobileDataEnabled()- remote exception retVal=false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    const/4 v1, 0x0

    return v1
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .locals 2

    .line 2714
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2715
    :catch_0
    move-exception v0

    .line 2716
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMultipathPreference(Landroid/net/Network;)I
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 3697
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->getMultipathPreference(Landroid/net/Network;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3698
    :catch_0
    move-exception v0

    .line 3699
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 1260
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1261
    :catch_0
    move-exception v0

    .line 1262
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNetworkForType(I)Landroid/net/Network;
    .locals 2
    .param p1, "networkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1158
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "networkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1094
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 1112
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "uid"    # I
    .param p3, "ignoreBlocked"    # Z

    .line 1118
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IConnectivityManager;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNetworkPreference()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 910
    const/4 v0, -0x1

    return v0
.end method

.method public getNetworkWatchlistConfigHash()[B
    .locals 3

    .line 3939
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getNetworkWatchlistConfigHash()[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3940
    :catch_0
    move-exception v0

    .line 3941
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ConnectivityManager"

    const-string v2, "Unable to get watchlist config hash"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 2609
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2610
    :catch_0
    move-exception v0

    .line 2611
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRestrictBackgroundStatus()I
    .locals 2

    .line 3924
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkPolicyManager()Landroid/net/INetworkPolicyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/INetworkPolicyManager;->getRestrictBackgroundByCaller()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3925
    :catch_0
    move-exception v0

    .line 3926
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 2

    .line 2421
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2422
    :catch_0
    move-exception v0

    .line 2423
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 2

    .line 2118
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2119
    :catch_0
    move-exception v0

    .line 2120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 2

    .line 2383
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2384
    :catch_0
    move-exception v0

    .line 2385
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 2

    .line 2402
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2403
    :catch_0
    move-exception v0

    .line 2404
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 2

    .line 2170
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2171
    :catch_0
    move-exception v0

    .line 2172
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 2

    .line 2134
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2135
    :catch_0
    move-exception v0

    .line 2136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 2

    .line 2156
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2157
    :catch_0
    move-exception v0

    .line 2158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isActiveNetworkMetered()Z
    .locals 2

    .line 2665
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2666
    :catch_0
    move-exception v0

    .line 2667
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAlwaysOnVpnPackageSupportedForUser(ILjava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "vpnPackage"    # Ljava/lang/String;

    .line 998
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isDefaultNetworkActive()Z
    .locals 2

    .line 2019
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isNetworkActive()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2020
    :catch_0
    move-exception v0

    .line 2021
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isNetworkSupported(I)Z
    .locals 2
    .param p1, "networkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2645
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2646
    :catch_0
    move-exception v0

    .line 2647
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isTetheringSupported()Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2260
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2262
    .local v0, "pkgName":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, v0}, Landroid/net/IConnectivityManager;->isTetheringSupported(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2267
    :catch_0
    move-exception v1

    .line 2268
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 2263
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2266
    .local v1, "e":Ljava/lang/SecurityException;
    const/4 v2, 0x0

    return v2
.end method

.method public registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 3476
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 3477
    return-void
.end method

.method public registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .locals 8
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 3497
    const/4 v7, 0x0

    .line 3498
    .local v7, "nullCapabilities":Landroid/net/NetworkCapabilities;
    new-instance v6, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v6, p0, p2}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V

    .line 3499
    .local v6, "cbHandler":Landroid/net/ConnectivityManager$CallbackHandler;
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;IIILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    .line 3500
    return-void
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I
    .locals 7
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "ni"    # Landroid/net/NetworkInfo;
    .param p3, "lp"    # Landroid/net/LinkProperties;
    .param p4, "nc"    # Landroid/net/NetworkCapabilities;
    .param p5, "score"    # I
    .param p6, "misc"    # Landroid/net/NetworkMisc;

    .line 2781
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/net/IConnectivityManager;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2782
    :catch_0
    move-exception v0

    .line 2783
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .line 3455
    invoke-static {p2}, Landroid/net/ConnectivityManager;->checkPendingIntentNotNull(Landroid/app/PendingIntent;)V

    .line 3457
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-interface {v0, v1, p2}, Landroid/net/IConnectivityManager;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3462
    nop

    .line 3463
    return-void

    .line 3460
    :catch_0
    move-exception v0

    .line 3461
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/ConnectivityManager;->convertServiceException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3458
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 3459
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 3403
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 3404
    return-void
.end method

.method public registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .locals 8
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 3419
    new-instance v6, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v6, p0, p3}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V

    .line 3420
    .local v6, "cbHandler":Landroid/net/ConnectivityManager$CallbackHandler;
    iget-object v7, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3421
    .local v7, "nc":Landroid/net/NetworkCapabilities;
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, v7

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;IIILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    .line 3422
    return-void
.end method

.method public registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 2
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "name"    # Ljava/lang/String;

    .line 2758
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2761
    nop

    .line 2762
    return-void

    .line 2759
    :catch_0
    move-exception v0

    .line 2760
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public releaseNetworkRequest(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 3371
    invoke-static {p1}, Landroid/net/ConnectivityManager;->checkPendingIntentNotNull(Landroid/app/PendingIntent;)V

    .line 3373
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3376
    nop

    .line 3377
    return-void

    .line 3374
    :catch_0
    move-exception v0

    .line 3375
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V
    .locals 3
    .param p1, "l"    # Landroid/net/ConnectivityManager$OnNetworkActiveListener;

    .line 2000
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mNetworkActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkActivityListener;

    .line 2001
    .local v0, "rl":Landroid/os/INetworkActivityListener;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Listener was not registered."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2003
    :try_start_0
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/os/INetworkManagementService;->unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2006
    nop

    .line 2007
    return-void

    .line 2004
    :catch_0
    move-exception v1

    .line 2005
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public reportBadNetwork(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2533
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 2534
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2537
    nop

    .line 2538
    return-void

    .line 2535
    :catch_0
    move-exception v0

    .line 2536
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportInetCondition(II)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I

    .line 2511
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2514
    nop

    .line 2515
    return-void

    .line 2512
    :catch_0
    move-exception v0

    .line 2513
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportNetworkConnectivity(Landroid/net/Network;Z)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "hasConnectivity"    # Z

    .line 2553
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2556
    nop

    .line 2557
    return-void

    .line 2554
    :catch_0
    move-exception v0

    .line 2555
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestBandwidthUpdate(Landroid/net/Network;)Z
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 3516
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->requestBandwidthUpdate(Landroid/net/Network;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3517
    :catch_0
    move-exception v0

    .line 3518
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .line 3348
    invoke-static {p2}, Landroid/net/ConnectivityManager;->checkPendingIntentNotNull(Landroid/app/PendingIntent;)V

    .line 3350
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-interface {v0, v1, p2}, Landroid/net/IConnectivityManager;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3355
    nop

    .line 3356
    return-void

    .line 3353
    :catch_0
    move-exception v0

    .line 3354
    .local v0, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v0}, Landroid/net/ConnectivityManager;->convertServiceException(Landroid/os/ServiceSpecificException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3351
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v0

    .line 3352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 3171
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 3172
    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V
    .locals 7
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "timeoutMs"    # I

    .line 3242
    invoke-static {p3}, Landroid/net/ConnectivityManager;->checkTimeout(I)V

    .line 3243
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v0

    .line 3244
    .local v0, "legacyType":I
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->getDefaultHandler()Landroid/net/ConnectivityManager$CallbackHandler;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    .line 3245
    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V
    .locals 8
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "timeoutMs"    # I
    .param p4, "legacyType"    # I
    .param p5, "handler"    # Landroid/os/Handler;

    .line 3134
    new-instance v6, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v6, p0, p5}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V

    .line 3135
    .local v6, "cbHandler":Landroid/net/ConnectivityManager$CallbackHandler;
    iget-object v7, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3136
    .local v7, "nc":Landroid/net/NetworkCapabilities;
    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v7

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/net/ConnectivityManager;->sendRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/net/ConnectivityManager$NetworkCallback;IIILandroid/net/ConnectivityManager$CallbackHandler;)Landroid/net/NetworkRequest;

    .line 3137
    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 3207
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v0

    .line 3208
    .local v0, "legacyType":I
    new-instance v6, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v6, p0, p3}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V

    .line 3209
    .local v6, "cbHandler":Landroid/net/ConnectivityManager$CallbackHandler;
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    .line 3210
    return-void
.end method

.method public requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;I)V
    .locals 7
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "timeoutMs"    # I

    .line 3276
    invoke-static {p4}, Landroid/net/ConnectivityManager;->checkTimeout(I)V

    .line 3277
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->inferLegacyTypeForNetworkCapabilities(Landroid/net/NetworkCapabilities;)I

    move-result v0

    .line 3278
    .local v0, "legacyType":I
    new-instance v6, Landroid/net/ConnectivityManager$CallbackHandler;

    invoke-direct {v6, p0, p3}, Landroid/net/ConnectivityManager$CallbackHandler;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;)V

    .line 3279
    .local v6, "cbHandler":Landroid/net/ConnectivityManager$CallbackHandler;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    .line 3280
    return-void
.end method

.method public requestRouteToHost(II)Z
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1831
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public requestRouteToHostAddress(ILjava/net/InetAddress;)Z
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # Ljava/net/InetAddress;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1854
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    .line 1856
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/IConnectivityManager;->requestRouteToHostAddress(I[B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1857
    :catch_0
    move-exception v0

    .line 1858
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    .line 3595
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3598
    nop

    .line 3599
    return-void

    .line 3596
    :catch_0
    move-exception v0

    .line 3597
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAirplaneMode(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 2749
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setAirplaneMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2752
    nop

    .line 2753
    return-void

    .line 2750
    :catch_0
    move-exception v0

    .line 2751
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAlwaysOnVpnPackageForUser(ILjava/lang/String;Z)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .param p3, "lockdownEnabled"    # Z

    .line 1024
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IConnectivityManager;->setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAvoidUnvalidated(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 3614
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setAvoidUnvalidated(Landroid/net/Network;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3617
    nop

    .line 3618
    return-void

    .line 3615
    :catch_0
    move-exception v0

    .line 3616
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 0
    .param p1, "allowBackgroundData"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1898
    return-void
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .locals 2
    .param p1, "p"    # Landroid/net/ProxyInfo;

    .line 2572
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2575
    nop

    .line 2576
    return-void

    .line 2573
    :catch_0
    move-exception v0

    .line 2574
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setNetworkPreference(I)V
    .locals 0
    .param p1, "preference"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 895
    return-void
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2733
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2736
    nop

    .line 2737
    return-void

    .line 2734
    :catch_0
    move-exception v0

    .line 2735
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUsbTethering(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .line 2446
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2447
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUsbTethering caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, v0}, Landroid/net/IConnectivityManager;->setUsbTethering(ZLjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2449
    .end local v0    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2450
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public showSoftApClientsNotification(I)V
    .locals 2
    .param p1, "clients"    # I

    .line 3953
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->showSoftApClientsNotification(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3956
    nop

    .line 3957
    return-void

    .line 3954
    :catch_0
    move-exception v0

    .line 3955
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startCaptivePortalApp(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 3630
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3633
    nop

    .line 3634
    return-void

    .line 3631
    :catch_0
    move-exception v0

    .line 3632
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startNattKeepalive(Landroid/net/Network;ILandroid/net/ConnectivityManager$PacketKeepaliveCallback;Ljava/net/InetAddress;ILjava/net/InetAddress;)Landroid/net/ConnectivityManager$PacketKeepalive;
    .locals 14
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "intervalSeconds"    # I
    .param p3, "callback"    # Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
    .param p4, "srcAddr"    # Ljava/net/InetAddress;
    .param p5, "srcPort"    # I
    .param p6, "dstAddr"    # Ljava/net/InetAddress;

    move-object v1, p0

    .line 1795
    new-instance v0, Landroid/net/ConnectivityManager$PacketKeepalive;

    const/4 v2, 0x0

    move-object v11, p1

    move-object/from16 v12, p3

    invoke-direct {v0, v1, v11, v12, v2}, Landroid/net/ConnectivityManager$PacketKeepalive;-><init>(Landroid/net/ConnectivityManager;Landroid/net/Network;Landroid/net/ConnectivityManager$PacketKeepaliveCallback;Landroid/net/ConnectivityManager$1;)V

    move-object v13, v0

    .line 1797
    .local v13, "k":Landroid/net/ConnectivityManager$PacketKeepalive;
    :try_start_0
    iget-object v3, v1, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-static {v13}, Landroid/net/ConnectivityManager$PacketKeepalive;->access$600(Landroid/net/ConnectivityManager$PacketKeepalive;)Landroid/os/Messenger;

    move-result-object v6

    new-instance v7, Landroid/os/Binder;

    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    .line 1798
    invoke-virtual/range {p4 .. p4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p6 .. p6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 1797
    move-object v4, v11

    move/from16 v5, p2

    move/from16 v9, p5

    invoke-interface/range {v3 .. v10}, Landroid/net/IConnectivityManager;->startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1803
    nop

    .line 1804
    return-object v13

    .line 1799
    :catch_0
    move-exception v0

    .line 1800
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ConnectivityManager"

    const-string v4, "Error starting packet keepalive: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1801
    invoke-virtual {v13}, Landroid/net/ConnectivityManager$PacketKeepalive;->stopLooper()V

    .line 1802
    return-object v2
.end method

.method public startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z
    .param p3, "callback"    # Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    .line 2300
    return-void
.end method

.method public startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z
    .param p3, "callback"    # Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2325
    const-string v0, "OnStartTetheringCallback cannot be null."

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    new-instance v0, Landroid/net/ConnectivityManager$2;

    invoke-direct {v0, p0, p4, p3}, Landroid/net/ConnectivityManager$2;-><init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 2339
    .local v0, "wrappedCallback":Landroid/os/ResultReceiver;
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2340
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startTethering caller:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1, v0, p2, v1}, Landroid/net/IConnectivityManager;->startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2345
    .end local v1    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 2342
    :catch_0
    move-exception v1

    .line 2343
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ConnectivityManager"

    const-string v3, "Exception trying to start tethering."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2344
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 2346
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .locals 8
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1310
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    .line 1311
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1312
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 1313
    const-string v2, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t satisfy startUsingNetworkFeature for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    return v1

    .line 1318
    :cond_0
    const/4 v2, 0x0

    .line 1319
    .local v2, "request":Landroid/net/NetworkRequest;
    sget-object v3, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    monitor-enter v3

    .line 1320
    :try_start_0
    sget-object v4, Landroid/net/ConnectivityManager;->sLegacyRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1321
    .local v4, "l":Landroid/net/ConnectivityManager$LegacyRequest;
    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 1322
    const-string v1, "ConnectivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "renewing startUsingNetworkFeature request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/net/ConnectivityManager$LegacyRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-direct {p0, v4}, Landroid/net/ConnectivityManager;->renewRequestLocked(Landroid/net/ConnectivityManager$LegacyRequest;)V

    .line 1324
    iget-object v1, v4, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;

    if-eqz v1, :cond_1

    .line 1325
    const/4 v1, 0x0

    monitor-exit v3

    return v1

    .line 1327
    :cond_1
    monitor-exit v3

    return v5

    .line 1331
    :cond_2
    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->requestNetworkForFeatureLocked(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest;

    move-result-object v6

    move-object v2, v6

    .line 1332
    .end local v4    # "l":Landroid/net/ConnectivityManager$LegacyRequest;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    if-eqz v2, :cond_3

    .line 1334
    const-string v1, "ConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting startUsingNetworkFeature for request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    return v5

    .line 1337
    :cond_3
    const-string v3, "ConnectivityManager"

    const-string v4, " request Failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    return v1

    .line 1332
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopTethering(I)V
    .locals 4
    .param p1, "type"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2362
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2363
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopTethering caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, v0}, Landroid/net/IConnectivityManager;->stopTethering(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2367
    .end local v0    # "pkgName":Ljava/lang/String;
    nop

    .line 2368
    return-void

    .line 2365
    :catch_0
    move-exception v0

    .line 2366
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1367
    invoke-direct {p0}, Landroid/net/ConnectivityManager;->checkLegacyRoutingApiAccess()V

    .line 1368
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForFeature(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1369
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_0

    .line 1370
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t satisfy stopUsingNetworkFeature for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const/4 v1, -0x1

    return v1

    .line 1375
    :cond_0
    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager;->removeRequestForFeature(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1376
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopUsingNetworkFeature for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public tether(Ljava/lang/String;)I
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 2202
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2203
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tether caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, v0}, Landroid/net/IConnectivityManager;->tether(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2205
    .end local v0    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2206
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterNetworkCallback(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 3574
    invoke-static {p1}, Landroid/net/ConnectivityManager;->checkPendingIntentNotNull(Landroid/app/PendingIntent;)V

    .line 3575
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->releaseNetworkRequest(Landroid/app/PendingIntent;)V

    .line 3576
    return-void
.end method

.method public unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 6
    .param p1, "networkCallback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 3536
    invoke-static {p1}, Landroid/net/ConnectivityManager;->checkCallbackNotNull(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 3537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3540
    .local v0, "reqs":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkRequest;>;"
    sget-object v1, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    .line 3541
    :try_start_0
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->access$900(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "NetworkCallback was not registered"

    invoke-static {v2, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3543
    invoke-static {p1}, Landroid/net/ConnectivityManager$NetworkCallback;->access$900(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;

    move-result-object v2

    sget-object v5, Landroid/net/ConnectivityManager;->ALREADY_UNREGISTERED:Landroid/net/NetworkRequest;

    if-eq v2, v5, :cond_1

    move v3, v4

    nop

    :cond_1
    const-string v2, "NetworkCallback was already unregistered"

    invoke-static {v3, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3545
    sget-object v2, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3546
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2

    .line 3547
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkRequest;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3549
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;>;"
    :cond_2
    goto :goto_1

    .line 3551
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3553
    .local v3, "r":Landroid/net/NetworkRequest;
    :try_start_1
    iget-object v4, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v4, v3}, Landroid/net/IConnectivityManager;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3556
    nop

    .line 3558
    :try_start_2
    sget-object v4, Landroid/net/ConnectivityManager;->sCallbacks:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3559
    .end local v3    # "r":Landroid/net/NetworkRequest;
    goto :goto_2

    .line 3554
    .restart local v3    # "r":Landroid/net/NetworkRequest;
    :catch_0
    move-exception v2

    .line 3555
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 3560
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "r":Landroid/net/NetworkRequest;
    :cond_4
    sget-object v2, Landroid/net/ConnectivityManager;->ALREADY_UNREGISTERED:Landroid/net/NetworkRequest;

    invoke-static {p1, v2}, Landroid/net/ConnectivityManager$NetworkCallback;->access$902(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;

    .line 3561
    monitor-exit v1

    .line 3562
    return-void

    .line 3561
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 2767
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2770
    nop

    .line 2771
    return-void

    .line 2768
    :catch_0
    move-exception v0

    .line 2769
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public untether(Ljava/lang/String;)I
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 2230
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2231
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "untether caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, v0}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2233
    .end local v0    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2234
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateLockdownVpn()Z
    .locals 2

    .line 2682
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->updateLockdownVpn()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2683
    :catch_0
    move-exception v0

    .line 2684
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
