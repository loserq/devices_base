.class public Lcom/android/server/wifi/SupplicantStateTracker;
.super Lcom/android/internal/util/StateMachine;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SupplicantStateTracker$DormantState;,
        Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;,
        Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;,
        Lcom/android/server/wifi/SupplicantStateTracker$ConnectionActiveState;,
        Lcom/android/server/wifi/SupplicantStateTracker$ScanState;,
        Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;,
        Lcom/android/server/wifi/SupplicantStateTracker$InactiveState;,
        Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;,
        Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final MAX_RETRIES_ON_ASSOCIATION_REJECT:I = 0x10

.field private static final MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SupplicantStateTracker"


# instance fields
.field private mAuthFailureInSupplicantBroadcast:Z

.field private mAuthFailureReason:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mCompletedState:Lcom/android/internal/util/State;

.field private final mConnectionActiveState:Lcom/android/internal/util/State;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private final mDisconnectState:Lcom/android/internal/util/State;

.field private final mDormantState:Lcom/android/internal/util/State;

.field private mFacade:Lcom/android/server/wifi/FrameworkFacade;

.field private final mHandshakeState:Lcom/android/internal/util/State;

.field private final mInactiveState:Lcom/android/internal/util/State;

.field private mNetworksDisabledDuringConnect:Z

.field private final mScanState:Lcom/android/internal/util/State;

.field private final mUninitializedState:Lcom/android/internal/util/State;

.field private final mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/FrameworkFacade;Landroid/os/Handler;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "wcs"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p3, "facade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p4, "t"    # Landroid/os/Handler;

    .line 101
    const-string v0, "SupplicantStateTracker"

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 77
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$UninitializedState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    .line 78
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$DefaultState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    .line 79
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$InactiveState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$InactiveState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    .line 80
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    .line 81
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$ScanState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$ScanState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    .line 82
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$ConnectionActiveState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$ConnectionActiveState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mConnectionActiveState:Lcom/android/internal/util/State;

    .line 83
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    .line 84
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$CompletedState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    .line 85
    new-instance v0, Lcom/android/server/wifi/SupplicantStateTracker$DormantState;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/SupplicantStateTracker$DormantState;-><init>(Lcom/android/server/wifi/SupplicantStateTracker;)V

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    .line 103
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    .line 105
    iput-object p3, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    invoke-virtual {v0}, Lcom/android/server/wifi/FrameworkFacade;->getBatteryService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 108
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 110
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 111
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 112
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mConnectionActiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 113
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mConnectionActiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 114
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mConnectionActiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mConnectionActiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 116
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mConnectionActiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 119
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->setInitialState(Lcom/android/internal/util/State;)V

    .line 120
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->setLogRecSize(I)V

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->setLogOnlyTransitions(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker;->start()V

    .line 124
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/SupplicantStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .line 46
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wifi/SupplicantStateTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .line 46
    iget v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureReason:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/wifi/SupplicantStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # I

    .line 46
    iput p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureReason:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Landroid/net/wifi/SupplicantState;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;ZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/SupplicantStateTracker;Lcom/android/server/wifi/StateChangeResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Lcom/android/server/wifi/StateChangeResult;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Lcom/android/server/wifi/StateChangeResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .line 46
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/SupplicantStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .line 46
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/SupplicantStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # Landroid/net/wifi/SupplicantState;
    .param p2, "x2"    # Z

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/SupplicantStateTracker;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/SupplicantStateTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V

    return-void
.end method

.method private handleNetworkConnectionFailure(II)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "disableReason"    # I

    .line 127
    sget-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkConnectionFailure netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mNetworksDisabledDuringConnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    if-eqz v0, :cond_1

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    .line 138
    return-void
.end method

.method private sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    .locals 1
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;
    .param p2, "failedAuth"    # Z

    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;ZI)V

    .line 183
    return-void
.end method

.method private sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;ZI)V
    .locals 4
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;
    .param p2, "failedAuth"    # Z
    .param p3, "reasonCode"    # I

    .line 188
    sget-object v0, Lcom/android/server/wifi/SupplicantStateTracker$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 205
    const-string v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown supplicant state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    goto :goto_0

    .line 203
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 202
    :pswitch_1
    const/16 v0, 0xc

    goto :goto_0

    .line 192
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 201
    :pswitch_3
    const/16 v0, 0xb

    goto :goto_0

    .line 200
    :pswitch_4
    const/16 v0, 0xa

    goto :goto_0

    .line 199
    :pswitch_5
    const/16 v0, 0x9

    goto :goto_0

    .line 198
    :pswitch_6
    const/16 v0, 0x8

    goto :goto_0

    .line 196
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 195
    :pswitch_8
    const/4 v0, 0x6

    goto :goto_0

    .line 194
    :pswitch_9
    const/4 v0, 0x5

    goto :goto_0

    .line 193
    :pswitch_a
    const/4 v0, 0x4

    goto :goto_0

    .line 191
    :pswitch_b
    const/4 v0, 0x2

    goto :goto_0

    .line 189
    :pswitch_c
    const/4 v0, 0x1

    .line 206
    .local v0, "supplState":I
    :goto_0
    nop

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, v0, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiSupplicantStateChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_1

    .line 211
    :catch_0
    move-exception v1

    .line 214
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    const-string v2, "newState"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 218
    if-eqz p2, :cond_0

    .line 219
    const-string v2, "supplicantError"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v2, "supplicantErrorReason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 227
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private transitionOnSupplicantStateChange(Lcom/android/server/wifi/StateChangeResult;)V
    .locals 4
    .param p1, "stateChangeResult"    # Lcom/android/server/wifi/StateChangeResult;

    .line 141
    iget-object v0, p1, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 143
    .local v0, "supState":Landroid/net/wifi/SupplicantState;
    sget-boolean v1, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SupplicantStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplicant state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    sget-object v1, Lcom/android/server/wifi/SupplicantStateTracker$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 176
    const-string v1, "SupplicantStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown supplicant state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 174
    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 170
    goto :goto_0

    .line 166
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDormantState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 167
    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mCompletedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 164
    goto :goto_0

    .line 160
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mHandshakeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 161
    goto :goto_0

    .line 153
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mScanState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 154
    goto :goto_0

    .line 151
    :pswitch_6
    goto :goto_0

    .line 147
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mDisconnectState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 148
    nop

    .line 179
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 411
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAuthFailureInSupplicantBroadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAuthFailureReason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mAuthFailureReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworksDisabledDuringConnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 416
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .line 88
    if-lez p1, :cond_0

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    goto :goto_0

    .line 91
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wifi/SupplicantStateTracker;->DBG:Z

    .line 93
    :goto_0
    return-void
.end method

.method public getSupplicantStateName()Ljava/lang/String;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
