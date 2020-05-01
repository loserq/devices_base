.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private mBringupStartTime:J

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDaemons:[Ljava/lang/String;

.field private final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOuterInterface:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p2, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "racoon"    # [Ljava/lang/String;
    .param p4, "mtpd"    # [Ljava/lang/String;

    .line 1906
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 1907
    const-string v0, "LegacyVpnRunner"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1878
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1881
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 1886
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1908
    iput-object p2, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1909
    const-string/jumbo v0, "racoon"

    const-string/jumbo v1, "mtpd"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .line 1911
    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v2, 0x1

    aput-object p4, v0, v2

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .line 1912
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/net/LocalSocket;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .line 1920
    iget-object v0, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 1922
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1923
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 1924
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 1925
    .local v4, "network":Landroid/net/Network;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v5

    .line 1926
    .local v5, "lp":Landroid/net/LinkProperties;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1927
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 1928
    .local v6, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1924
    .end local v4    # "network":Landroid/net/Network;
    .end local v5    # "lp":Landroid/net/LinkProperties;
    .end local v6    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1933
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1934
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1935
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1936
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1871
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1871
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    return-object v0
.end method

.method private bringup()V
    .locals 17

    .line 1995
    move-object/from16 v1, p0

    const/4 v2, 0x0

    move v3, v2

    .line 1998
    .local v3, "initFinished":Z
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 2001
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v4, v0

    move v5, v2

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_1

    aget-object v7, v0, v5

    .line 2002
    .local v7, "daemon":Ljava/lang/String;
    :goto_1
    invoke-static {v7}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2003
    invoke-direct {v1, v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_1

    .line 2001
    .end local v7    # "daemon":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2008
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/misc/vpn/state"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 2009
    .local v4, "state":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2010
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2013
    new-instance v0, Ljava/io/File;

    const-string v5, "/data/misc/vpn/abort"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2014
    const/4 v3, 0x1

    .line 2017
    const/4 v0, 0x0

    .line 2018
    .local v0, "restart":Z
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v7, v5

    move v8, v0

    move v0, v2

    .end local v0    # "restart":Z
    .local v8, "restart":Z
    :goto_2
    if-ge v0, v7, :cond_4

    aget-object v9, v5, v0

    .line 2019
    .local v9, "arguments":[Ljava/lang/String;
    if-nez v8, :cond_3

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    move v10, v2

    goto :goto_4

    :cond_3
    :goto_3
    move v10, v6

    :goto_4
    move v8, v10

    .line 2018
    .end local v9    # "arguments":[Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2021
    :cond_4
    if-nez v8, :cond_5

    .line 2022
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)V

    .line 2023
    return-void

    .line 2025
    :cond_5
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v7, "execute"

    invoke-virtual {v0, v5, v7}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2028
    move v0, v2

    .local v0, "i":I
    :goto_5
    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v0, v0

    if-ge v5, v0, :cond_b

    .line 2029
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v0, v0, v5

    move-object v9, v0

    .line 2030
    .restart local v9    # "arguments":[Ljava/lang/String;
    if-nez v9, :cond_6

    .line 2031
    goto/16 :goto_a

    .line 2035
    :cond_6
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v0, v0, v5

    move-object v10, v0

    .line 2036
    .local v10, "daemon":Ljava/lang/String;
    invoke-static {v10}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 2039
    :goto_6
    invoke-static {v10}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2040
    invoke-direct {v1, v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_6

    .line 2044
    :cond_7
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    new-instance v11, Landroid/net/LocalSocket;

    invoke-direct {v11}, Landroid/net/LocalSocket;-><init>()V

    aput-object v11, v0, v5

    .line 2045
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v11, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v10, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .local v0, "address":Landroid/net/LocalSocketAddress;
    :goto_7
    move-object v11, v0

    .line 2051
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .local v11, "address":Landroid/net/LocalSocketAddress;
    :try_start_1
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v5

    invoke-virtual {v0, v11}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2052
    nop

    .line 2058
    :try_start_2
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v5

    const/16 v12, 0x1f4

    invoke-virtual {v0, v12}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 2061
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    move-object v12, v0

    .line 2062
    .local v12, "out":Ljava/io/OutputStream;
    array-length v0, v9

    move v13, v2

    :goto_8
    if-ge v13, v0, :cond_9

    aget-object v14, v9, v13

    .line 2063
    .local v14, "argument":Ljava/lang/String;
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v15

    .line 2064
    .local v15, "bytes":[B
    array-length v6, v15

    const v7, 0xffff

    if-ge v6, v7, :cond_8

    .line 2067
    array-length v6, v15

    shr-int/lit8 v6, v6, 0x8

    invoke-virtual {v12, v6}, Ljava/io/OutputStream;->write(I)V

    .line 2068
    array-length v6, v15

    invoke-virtual {v12, v6}, Ljava/io/OutputStream;->write(I)V

    .line 2069
    invoke-virtual {v12, v15}, Ljava/io/OutputStream;->write([B)V

    .line 2070
    invoke-direct {v1, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 2062
    .end local v14    # "argument":Ljava/lang/String;
    .end local v15    # "bytes":[B
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x1

    goto :goto_8

    .line 2065
    .restart local v14    # "argument":Ljava/lang/String;
    .restart local v15    # "bytes":[B
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is too large"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2072
    .end local v14    # "argument":Ljava/lang/String;
    .end local v15    # "bytes":[B
    :cond_9
    const/16 v0, 0xff

    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2073
    invoke-virtual {v12, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2074
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 2077
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .local v0, "in":Ljava/io/InputStream;
    :goto_9
    move-object v6, v0

    .line 2080
    .end local v0    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_a

    .line 2081
    nop

    .line 2028
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v9    # "arguments":[Ljava/lang/String;
    .end local v10    # "daemon":Ljava/lang/String;
    .end local v11    # "address":Landroid/net/LocalSocketAddress;
    .end local v12    # "out":Ljava/io/OutputStream;
    :goto_a
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "i":I
    .local v0, "i":I
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 2085
    .end local v0    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v9    # "arguments":[Ljava/lang/String;
    .restart local v10    # "daemon":Ljava/lang/String;
    .restart local v11    # "address":Landroid/net/LocalSocketAddress;
    .restart local v12    # "out":Ljava/io/OutputStream;
    :cond_a
    goto :goto_b

    .line 2083
    :catch_0
    move-exception v0

    .line 2086
    :goto_b
    const/4 v7, 0x1

    :try_start_4
    invoke-direct {v1, v7}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 2077
    move-object v0, v6

    goto :goto_9

    .line 2053
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v12    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 2056
    const/4 v6, 0x1

    invoke-direct {v1, v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 2045
    move-object v0, v11

    const/4 v6, 0x1

    goto :goto_7

    .line 2091
    .end local v5    # "i":I
    .end local v9    # "arguments":[Ljava/lang/String;
    .end local v10    # "daemon":Ljava/lang/String;
    .end local v11    # "address":Landroid/net/LocalSocketAddress;
    :cond_b
    :goto_c
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2093
    move v0, v2

    .restart local v0    # "i":I
    :goto_d
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_e

    .line 2094
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v5, v5, v0

    .line 2095
    .local v5, "daemon":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v6, v6, v0

    if-eqz v6, :cond_d

    invoke-static {v5}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .end local v5    # "daemon":Ljava/lang/String;
    goto :goto_e

    .line 2096
    .restart local v5    # "daemon":Ljava/lang/String;
    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is dead"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2093
    .end local v5    # "daemon":Ljava/lang/String;
    :cond_d
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2099
    .end local v0    # "i":I
    :cond_e
    const/4 v5, 0x1

    invoke-direct {v1, v5}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_c

    .line 2103
    :cond_f
    const/4 v0, 0x0

    invoke-static {v4, v2, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "\n"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 2104
    .local v5, "parameters":[Ljava/lang/String;
    array-length v0, v5

    const/4 v6, 0x7

    if-ne v0, v6, :cond_1a

    .line 2109
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 2111
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 2113
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2114
    :cond_10
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-virtual {v0, v6}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 2118
    :cond_11
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 2119
    :cond_12
    const/4 v0, 0x3

    aget-object v0, v5, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2120
    .local v0, "dnsServers":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13

    .line 2121
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 2126
    .end local v0    # "dnsServers":Ljava/lang/String;
    :cond_13
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 2127
    :cond_14
    const/4 v0, 0x4

    aget-object v0, v5, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2128
    .local v0, "searchDomains":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15

    .line 2129
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 2134
    .end local v0    # "searchDomains":Ljava/lang/String;
    :cond_15
    const/4 v0, 0x5

    aget-object v0, v5, v0

    move-object v6, v0

    .line 2135
    .local v6, "endpoint":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v0, :cond_18

    .line 2137
    :try_start_5
    invoke-static {v6}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2138
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    const/16 v9, 0x9

    if-eqz v7, :cond_16

    .line 2139
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v7, v7, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v10, Landroid/net/RouteInfo;

    new-instance v11, Landroid/net/IpPrefix;

    const/16 v12, 0x20

    invoke-direct {v11, v0, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v10, v11, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 2140
    :cond_16
    instance-of v7, v0, Ljava/net/Inet6Address;

    if-eqz v7, :cond_17

    .line 2141
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v7, v7, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v10, Landroid/net/RouteInfo;

    new-instance v11, Landroid/net/IpPrefix;

    const/16 v12, 0x80

    invoke-direct {v11, v0, v12}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v10, v11, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;I)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 2143
    :cond_17
    const-string v7, "LegacyVpnRunner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown IP address family for VPN endpoint: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 2147
    .end local v0    # "addr":Ljava/net/InetAddress;
    :goto_f
    goto :goto_10

    .line 2145
    :catch_2
    move-exception v0

    .line 2146
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string v7, "LegacyVpnRunner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception constructing throw route to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_18
    :goto_10
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 2153
    :try_start_7
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 2156
    invoke-direct {v1, v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 2159
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    .line 2164
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/connectivity/Vpn;->access$402(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 2165
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$1400(Lcom/android/server/connectivity/Vpn;)V

    .line 2167
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    .line 2169
    const-string v0, "LegacyVpnRunner"

    const-string v2, "Connected!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    monitor-exit v7

    .line 2175
    .end local v4    # "state":Ljava/io/File;
    .end local v5    # "parameters":[Ljava/lang/String;
    .end local v6    # "endpoint":Ljava/lang/String;
    .end local v8    # "restart":Z
    goto :goto_11

    .line 2160
    .restart local v4    # "state":Ljava/io/File;
    .restart local v5    # "parameters":[Ljava/lang/String;
    .restart local v6    # "endpoint":Ljava/lang/String;
    .restart local v8    # "restart":Z
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is gone"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2170
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    .line 2105
    .end local v6    # "endpoint":Ljava/lang/String;
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot parse the state"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2011
    .end local v5    # "parameters":[Ljava/lang/String;
    .end local v8    # "restart":Z
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot delete the state"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 2171
    .end local v4    # "state":Ljava/io/File;
    :catch_3
    move-exception v0

    .line 2172
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LegacyVpnRunner"

    const-string v4, "Aborting"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2173
    iget-object v2, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 2174
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 2176
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11
    return-void
.end method

.method private checkInterruptAndDelay(Z)V
    .locals 6
    .param p1, "sleepLonger"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1984
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1985
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 1986
    if-eqz p1, :cond_0

    const-wide/16 v2, 0xc8

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1991
    return-void

    .line 1988
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "checkpoint"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1989
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "VPN bringup took too long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private waitForDaemonsToStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2184
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2185
    return-void

    .line 2188
    :cond_0
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2190
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2191
    return-void

    .line 2189
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 3
    .param p1, "interfaze"    # Ljava/lang/String;

    .line 1939
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1940
    const-string v0, "LegacyVpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy VPN is going down with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1943
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .line 1947
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    .line 1948
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)V

    .line 1950
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1951
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1952
    :goto_0
    return-void
.end method

.method public run()V
    .locals 9

    .line 1957
    const-string v0, "LegacyVpnRunner"

    const-string v1, "Waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    const-string v0, "LegacyVpnRunner"

    monitor-enter v0

    .line 1959
    :try_start_0
    const-string v1, "LegacyVpnRunner"

    const-string v2, "Executing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1961
    const-wide/16 v1, 0x32

    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->bringup()V

    .line 1962
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->waitForDaemonsToStop()V

    .line 1963
    invoke-static {}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupted()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1966
    :try_start_2
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 1967
    .local v7, "socket":Landroid/net/LocalSocket;
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1966
    .end local v7    # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1972
    :cond_0
    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1974
    goto :goto_1

    .line 1973
    :catch_0
    move-exception v1

    .line 1975
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 1976
    .local v4, "daemon":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1975
    .end local v4    # "daemon":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1966
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v6, v5

    move v7, v3

    :goto_3
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 1967
    .local v8, "socket":Landroid/net/LocalSocket;
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1966
    .end local v8    # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1972
    :cond_1
    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1974
    goto :goto_4

    .line 1973
    :catch_1
    move-exception v1

    .line 1975
    :goto_4
    :try_start_6
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    :goto_5
    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    .line 1976
    .local v5, "daemon":Ljava/lang/String;
    invoke-static {v5}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1975
    .end local v5    # "daemon":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_2
    throw v4

    .line 1964
    :catch_2
    move-exception v4

    .line 1966
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v5, v4

    move v6, v3

    :goto_6
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 1967
    .restart local v7    # "socket":Landroid/net/LocalSocket;
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1966
    .end local v7    # "socket":Landroid/net/LocalSocket;
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1972
    :cond_3
    :try_start_7
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1974
    goto :goto_7

    .line 1973
    :catch_3
    move-exception v1

    .line 1975
    :goto_7
    :try_start_8
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v1

    :goto_8
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 1976
    .restart local v4    # "daemon":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1975
    .end local v4    # "daemon":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1978
    :cond_4
    nop

    .line 1979
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)V

    .line 1980
    monitor-exit v0

    .line 1981
    return-void

    .line 1980
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method
