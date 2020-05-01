.class public final Landroid/bluetooth/BluetoothAvrcpController;
.super Ljava/lang/Object;
.source "BluetoothAvrcpController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.avrcp-controller.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_PLAYER_SETTING:Ljava/lang/String; = "android.bluetooth.avrcp-controller.profile.action.PLAYER_SETTING"

.field private static final DBG:Z = false

.field public static final EXTRA_PLAYER_SETTING:Ljava/lang/String; = "android.bluetooth.avrcp-controller.profile.extra.PLAYER_SETTING"

.field private static final TAG:Ljava/lang/String; = "BluetoothAvrcpController"

.field private static final VDBG:Z = false


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private volatile mService:Landroid/bluetooth/IBluetoothAvrcpController;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/bluetooth/BluetoothAvrcpController$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothAvrcpController$1;-><init>(Landroid/bluetooth/BluetoothAvrcpController;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 292
    new-instance v0, Landroid/bluetooth/BluetoothAvrcpController$2;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothAvrcpController$2;-><init>(Landroid/bluetooth/BluetoothAvrcpController;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mConnection:Landroid/content/ServiceConnection;

    .line 121
    iput-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 123
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 124
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 125
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    .line 127
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAvrcpController"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAvrcpController;->doBind()Z

    .line 134
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAvrcpController;

    .line 41
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAvrcpController;

    .line 41
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothAvrcpController;Landroid/bluetooth/IBluetoothAvrcpController;)Landroid/bluetooth/IBluetoothAvrcpController;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAvrcpController;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothAvrcpController;

    .line 41
    iput-object p1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAvrcpController;

    .line 41
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAvrcpController;

    .line 41
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 2

    .line 312
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 316
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 320
    const-string v0, "BluetoothAvrcpController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method


# virtual methods
.method close()V
    .locals 5

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 150
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 151
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 153
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothAvrcpController"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAvrcpController;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v2

    .line 160
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 162
    :try_start_2
    iput-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    .line 163
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    goto :goto_1

    .line 164
    :catch_1
    move-exception v0

    .line 165
    .local v0, "re":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "BluetoothAvrcpController"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .end local v0    # "re":Ljava/lang/Exception;
    :cond_1
    :goto_1
    monitor-exit v2

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method doBind()Z
    .locals 6

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothAvrcpController;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 139
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 140
    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/bluetooth/BluetoothAvrcpController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothAvrcpController;->mConnection:Landroid/content/ServiceConnection;

    iget-object v5, p0, Landroid/bluetooth/BluetoothAvrcpController;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {v5}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 140
    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 142
    :cond_1
    :goto_0
    const-string v3, "BluetoothAvrcpController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth AVRCP Controller Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return v2
.end method

.method public finalize()V
    .locals 0

    .line 173
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAvrcpController;->close()V

    .line 174
    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    .line 183
    .local v0, "service":Landroid/bluetooth/IBluetoothAvrcpController;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothAvrcpController;->getConnectedDevices()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAvrcpController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 191
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    const-string v1, "BluetoothAvrcpController"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 220
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    .line 221
    .local v0, "service":Landroid/bluetooth/IBluetoothAvrcpController;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothAvrcpController;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothAvrcpController;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 224
    :catch_0
    move-exception v2

    .line 225
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothAvrcpController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return v1

    .line 229
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    const-string v2, "BluetoothAvrcpController"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    return v1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 5
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    .line 202
    .local v0, "service":Landroid/bluetooth/IBluetoothAvrcpController;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothAvrcpController;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAvrcpController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 210
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    const-string v1, "BluetoothAvrcpController"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getPlayerSettings(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "settings":Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    iget-object v1, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    .line 242
    .local v1, "service":Landroid/bluetooth/IBluetoothAvrcpController;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    :try_start_0
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothAvrcpController;->getPlayerSettings(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 248
    goto :goto_0

    .line 245
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothAvrcpController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error talking to BT service in getMetadata() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v3, 0x0

    return-object v3

    .line 250
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public sendGroupNavigationCmd(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "keyCode"    # I
    .param p3, "keyState"    # I

    .line 277
    const-string v0, "BluetoothAvrcpController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendGroupNavigationCmd dev = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    .line 280
    .local v0, "service":Landroid/bluetooth/IBluetoothAvrcpController;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IBluetoothAvrcpController;->sendGroupNavigationCmd(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    return-void

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAvrcpController"

    const-string v3, "Error talking to BT service in sendGroupNavigationCmd()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    return-void

    .line 289
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    const-string v1, "BluetoothAvrcpController"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1
    return-void
.end method

.method public setPlayerApplicationSetting(Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)Z
    .locals 6
    .param p1, "plAppSetting"    # Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    .line 259
    iget-object v0, p0, Landroid/bluetooth/BluetoothAvrcpController;->mService:Landroid/bluetooth/IBluetoothAvrcpController;

    .line 260
    .local v0, "service":Landroid/bluetooth/IBluetoothAvrcpController;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAvrcpController;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothAvrcpController;->setPlayerApplicationSetting(Landroid/bluetooth/BluetoothAvrcpPlayerSettings;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 263
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothAvrcpController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error talking to BT service in setPlayerApplicationSetting() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return v1

    .line 268
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    if-nez v0, :cond_1

    const-string v2, "BluetoothAvrcpController"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_1
    return v1
.end method
