.class public Landroid/net/wifi/p2p/WifiP2pManager;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pManager$Channel;,
        Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    }
.end annotation


# static fields
.field public static final ADD_LOCAL_SERVICE:I = 0x2201c

.field public static final ADD_LOCAL_SERVICE_FAILED:I = 0x2201d

.field public static final ADD_LOCAL_SERVICE_SUCCEEDED:I = 0x2201e

.field public static final ADD_SERVICE_REQUEST:I = 0x22025

.field public static final ADD_SERVICE_REQUEST_FAILED:I = 0x22026

.field public static final ADD_SERVICE_REQUEST_SUCCEEDED:I = 0x22027

.field private static final BASE:I = 0x22000

.field public static final BUSY:I = 0x2

.field public static final CALLING_PACKAGE:Ljava/lang/String; = "android.net.wifi.p2p.CALLING_PACKAGE"

.field public static final CANCEL_CONNECT:I = 0x2200a

.field public static final CANCEL_CONNECT_FAILED:I = 0x2200b

.field public static final CANCEL_CONNECT_SUCCEEDED:I = 0x2200c

.field public static final CLEAR_LOCAL_SERVICES:I = 0x22022

.field public static final CLEAR_LOCAL_SERVICES_FAILED:I = 0x22023

.field public static final CLEAR_LOCAL_SERVICES_SUCCEEDED:I = 0x22024

.field public static final CLEAR_SERVICE_REQUESTS:I = 0x2202b

.field public static final CLEAR_SERVICE_REQUESTS_FAILED:I = 0x2202c

.field public static final CLEAR_SERVICE_REQUESTS_SUCCEEDED:I = 0x2202d

.field public static final CONNECT:I = 0x22007

.field public static final CONNECT_FAILED:I = 0x22008

.field public static final CONNECT_SUCCEEDED:I = 0x22009

.field public static final CREATE_GROUP:I = 0x2200d

.field public static final CREATE_GROUP_FAILED:I = 0x2200e

.field public static final CREATE_GROUP_SUCCEEDED:I = 0x2200f

.field public static final DELETE_PERSISTENT_GROUP:I = 0x22036

.field public static final DELETE_PERSISTENT_GROUP_FAILED:I = 0x22037

.field public static final DELETE_PERSISTENT_GROUP_SUCCEEDED:I = 0x22038

.field public static final DISCOVER_PEERS:I = 0x22001

.field public static final DISCOVER_PEERS_FAILED:I = 0x22002

.field public static final DISCOVER_PEERS_SUCCEEDED:I = 0x22003

.field public static final DISCOVER_SERVICES:I = 0x2202e

.field public static final DISCOVER_SERVICES_FAILED:I = 0x2202f

.field public static final DISCOVER_SERVICES_SUCCEEDED:I = 0x22030

.field public static final ERROR:I = 0x0

.field public static final EXTRA_DISCOVERY_STATE:Ljava/lang/String; = "discoveryState"

.field public static final EXTRA_HANDOVER_MESSAGE:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_P2P_DEVICE_LIST:Ljava/lang/String; = "wifiP2pDeviceList"

.field public static final EXTRA_WIFI_P2P_DEVICE:Ljava/lang/String; = "wifiP2pDevice"

.field public static final EXTRA_WIFI_P2P_GROUP:Ljava/lang/String; = "p2pGroupInfo"

.field public static final EXTRA_WIFI_P2P_INFO:Ljava/lang/String; = "wifiP2pInfo"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_p2p_state"

.field public static final GET_HANDOVER_REQUEST:I = 0x2204b

.field public static final GET_HANDOVER_SELECT:I = 0x2204c

.field public static final INITIATOR_REPORT_NFC_HANDOVER:I = 0x2204e

.field public static final MIRACAST_DISABLED:I = 0x0

.field public static final MIRACAST_SINK:I = 0x2

.field public static final MIRACAST_SOURCE:I = 0x1

.field public static final NO_SERVICE_REQUESTS:I = 0x3

.field public static final P2P_UNSUPPORTED:I = 0x1

.field public static final PING:I = 0x22031

.field public static final REMOVE_GROUP:I = 0x22010

.field public static final REMOVE_GROUP_FAILED:I = 0x22011

.field public static final REMOVE_GROUP_SUCCEEDED:I = 0x22012

.field public static final REMOVE_LOCAL_SERVICE:I = 0x2201f

.field public static final REMOVE_LOCAL_SERVICE_FAILED:I = 0x22020

.field public static final REMOVE_LOCAL_SERVICE_SUCCEEDED:I = 0x22021

.field public static final REMOVE_SERVICE_REQUEST:I = 0x22028

.field public static final REMOVE_SERVICE_REQUEST_FAILED:I = 0x22029

.field public static final REMOVE_SERVICE_REQUEST_SUCCEEDED:I = 0x2202a

.field public static final REPORT_NFC_HANDOVER_FAILED:I = 0x22051

.field public static final REPORT_NFC_HANDOVER_SUCCEEDED:I = 0x22050

.field public static final REQUEST_CONNECTION_INFO:I = 0x22015

.field public static final REQUEST_GROUP_INFO:I = 0x22017

.field public static final REQUEST_PEERS:I = 0x22013

.field public static final REQUEST_PERSISTENT_GROUP_INFO:I = 0x22039

.field public static final RESPONDER_REPORT_NFC_HANDOVER:I = 0x2204f

.field public static final RESPONSE_CONNECTION_INFO:I = 0x22016

.field public static final RESPONSE_GET_HANDOVER_MESSAGE:I = 0x2204d

.field public static final RESPONSE_GROUP_INFO:I = 0x22018

.field public static final RESPONSE_PEERS:I = 0x22014

.field public static final RESPONSE_PERSISTENT_GROUP_INFO:I = 0x2203a

.field public static final RESPONSE_SERVICE:I = 0x22032

.field public static final SET_CHANNEL:I = 0x22047

.field public static final SET_CHANNEL_FAILED:I = 0x22048

.field public static final SET_CHANNEL_SUCCEEDED:I = 0x22049

.field public static final SET_DEVICE_NAME:I = 0x22033

.field public static final SET_DEVICE_NAME_FAILED:I = 0x22034

.field public static final SET_DEVICE_NAME_SUCCEEDED:I = 0x22035

.field public static final SET_WFD_INFO:I = 0x2203b

.field public static final SET_WFD_INFO_FAILED:I = 0x2203c

.field public static final SET_WFD_INFO_SUCCEEDED:I = 0x2203d

.field public static final START_LISTEN:I = 0x22041

.field public static final START_LISTEN_FAILED:I = 0x22042

.field public static final START_LISTEN_SUCCEEDED:I = 0x22043

.field public static final START_WPS:I = 0x2203e

.field public static final START_WPS_FAILED:I = 0x2203f

.field public static final START_WPS_SUCCEEDED:I = 0x22040

.field public static final STOP_DISCOVERY:I = 0x22004

.field public static final STOP_DISCOVERY_FAILED:I = 0x22005

.field public static final STOP_DISCOVERY_SUCCEEDED:I = 0x22006

.field public static final STOP_LISTEN:I = 0x22044

.field public static final STOP_LISTEN_FAILED:I = 0x22045

.field public static final STOP_LISTEN_SUCCEEDED:I = 0x22046

.field private static final TAG:Ljava/lang/String; = "WifiP2pManager"

.field public static final WIFI_P2P_CONNECTION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

.field public static final WIFI_P2P_DISCOVERY_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

.field public static final WIFI_P2P_DISCOVERY_STARTED:I = 0x2

.field public static final WIFI_P2P_DISCOVERY_STOPPED:I = 0x1

.field public static final WIFI_P2P_PEERS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.PEERS_CHANGED"

.field public static final WIFI_P2P_PERSISTENT_GROUPS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

.field public static final WIFI_P2P_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.STATE_CHANGED"

.field public static final WIFI_P2P_STATE_DISABLED:I = 0x1

.field public static final WIFI_P2P_STATE_ENABLED:I = 0x2

.field public static final WIFI_P2P_THIS_DEVICE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.THIS_DEVICE_CHANGED"


# instance fields
.field mService:Landroid/net/wifi/p2p/IWifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/IWifiP2pManager;)V
    .locals 0
    .param p1, "service"    # Landroid/net/wifi/p2p/IWifiP2pManager;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    .line 491
    return-void
.end method

.method private static checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2
    .param p0, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 911
    if-eqz p0, :cond_0

    .line 912
    return-void

    .line 911
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkP2pConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 2
    .param p0, "c"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 923
    if-eqz p0, :cond_1

    .line 924
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    return-void

    .line 925
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 2
    .param p0, "info"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 915
    if-eqz p0, :cond_0

    .line 916
    return-void

    .line 915
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service info is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 2
    .param p0, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .line 919
    if-eqz p0, :cond_0

    .line 920
    return-void

    .line 919
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service request is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initalizeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;Landroid/os/Binder;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 8
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    .param p4, "messenger"    # Landroid/os/Messenger;
    .param p5, "binder"    # Landroid/os/Binder;

    .line 957
    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    .line 959
    :cond_0
    new-instance v7, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Binder;Landroid/net/wifi/p2p/WifiP2pManager;)V

    .line 960
    .local v1, "c":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p4}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v2

    if-nez v2, :cond_1

    .line 962
    return-object v1

    .line 964
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->close()V

    .line 965
    return-object v0
.end method


# virtual methods
.method public addLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1147
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1148
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    .line 1149
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2201c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1150
    return-void
.end method

.method public addServiceRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1281
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1282
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    .line 1283
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 1284
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 1283
    const v2, 0x22025

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1285
    return-void
.end method

.method public cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1049
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1050
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2200a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1051
    return-void
.end method

.method public clearLocalServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1183
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1184
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22022

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1185
    return-void
.end method

.method public clearServiceRequests(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1319
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1320
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 1321
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 1320
    const v2, 0x2202b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1322
    return-void
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1032
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1033
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkP2pConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    .line 1034
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22007

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1035
    return-void
.end method

.method public createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1073
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1074
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 1075
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 1074
    const v2, 0x2200d

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1076
    return-void
.end method

.method public deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "netId"    # I
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1405
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1406
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22036

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1407
    return-void
.end method

.method public discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 989
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 990
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22001

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 991
    return-void
.end method

.method public discoverServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1256
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1257
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2202e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1258
    return-void
.end method

.method public getMessenger(Landroid/os/Binder;)Landroid/os/Messenger;
    .locals 2
    .param p1, "binder"    # Landroid/os/Binder;

    .line 1447
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getMessenger(Landroid/os/IBinder;)Landroid/os/Messenger;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1448
    :catch_0
    move-exception v0

    .line 1449
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNfcHandoverRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .line 1473
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1474
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2204b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1475
    return-void
.end method

.method public getNfcHandoverSelect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .line 1483
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1484
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2204c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1485
    return-void
.end method

.method public getP2pStateMachineMessenger()Landroid/os/Messenger;
    .locals 2

    .line 1462
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v0}, Landroid/net/wifi/p2p/IWifiP2pManager;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1463
    :catch_0
    move-exception v0

    .line 1464
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 7
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .line 939
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 940
    .local v0, "binder":Landroid/os/Binder;
    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->getMessenger(Landroid/os/Binder;)Landroid/os/Messenger;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initalizeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;Landroid/os/Binder;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    .line 942
    .local v1, "channel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    return-object v1
.end method

.method public initializeInternal(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 6
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .line 951
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/WifiP2pManager;->initalizeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;Landroid/os/Binder;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    return-object v0
.end method

.method public initiatorReportNfcHandover(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "handoverSelect"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1492
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1493
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1494
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    .line 1496
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    .line 1495
    const v3, 0x2204e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1497
    return-void
.end method

.method public listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "enable"    # Z
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1096
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1097
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-eqz p2, :cond_0

    const v1, 0x22041

    goto :goto_0

    :cond_0
    const v1, 0x22044

    :goto_0
    const/4 v2, 0x0

    .line 1098
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    .line 1097
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1099
    return-void
.end method

.method public removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1090
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1091
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22010

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1092
    return-void
.end method

.method public removeLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1166
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1167
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    .line 1168
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2201f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1169
    return-void
.end method

.method public removeServiceRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1301
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1302
    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    .line 1303
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 1304
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    .line 1303
    const v2, 0x22028

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1305
    return-void
.end method

.method public requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .line 1345
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1346
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22015

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1347
    return-void
.end method

.method public requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .line 1356
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1357
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22017

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1358
    return-void
.end method

.method public requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .line 1331
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1332
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1333
    .local v0, "callingPackage":Landroid/os/Bundle;
    const-string v1, "android.net.wifi.p2p.CALLING_PACKAGE"

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x22013

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1336
    return-void
.end method

.method public requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    .line 1417
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1418
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1419
    return-void
.end method

.method public responderReportNfcHandover(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "handoverRequest"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1505
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1506
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1507
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    .line 1509
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    .line 1508
    const v3, 0x2204f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1510
    return-void
.end method

.method public setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "devName"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1367
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1368
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 1369
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iput-object p2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1370
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x22033

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1371
    return-void
.end method

.method public setDnsSdResponseListeners(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)V
    .locals 0
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "servListener"    # Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;
    .param p3, "txtListener"    # Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    .line 1216
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1217
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$702(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    .line 1218
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$802(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    .line 1219
    return-void
.end method

.method public setMiracastMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 1430
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/IWifiP2pManager;->setMiracastMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1433
    nop

    .line 1434
    return-void

    .line 1431
    :catch_0
    move-exception v0

    .line 1432
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setServiceResponseListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;)V
    .locals 0
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    .line 1200
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1201
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$602(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    .line 1202
    return-void
.end method

.method public setUpnpServiceResponseListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)V
    .locals 0
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    .line 1232
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1233
    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$902(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    .line 1234
    return-void
.end method

.method public setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "wfdInfo"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1377
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1379
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v0}, Landroid/net/wifi/p2p/IWifiP2pManager;->checkConfigureWifiDisplayPermission()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1382
    goto :goto_0

    .line 1380
    :catch_0
    move-exception v0

    .line 1381
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1383
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2203b

    const/4 v2, 0x0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1384
    return-void
.end method

.method public setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "lc"    # I
    .param p3, "oc"    # I
    .param p4, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1103
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1105
    .local v0, "p2pChannels":Landroid/os/Bundle;
    const-string v1, "lc"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1106
    const-string/jumbo v1, "oc"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1107
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-static {p1, p4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x22047

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1108
    return-void
.end method

.method public startWps(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/WpsInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "wps"    # Landroid/net/wifi/WpsInfo;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1121
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1122
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2203e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1123
    return-void
.end method

.method public stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 1005
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 1006
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$500(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22004

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1007
    return-void
.end method
