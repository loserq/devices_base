.class Landroid/net/ConnectivityManager$LegacyRequest;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyRequest"
.end annotation


# instance fields
.field currentNetwork:Landroid/net/Network;

.field delay:I

.field expireSequenceNumber:I

.field networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field networkCapabilities:Landroid/net/NetworkCapabilities;

.field networkRequest:Landroid/net/NetworkRequest;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1520
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    .line 1529
    new-instance v0, Landroid/net/ConnectivityManager$LegacyRequest$1;

    invoke-direct {v0, p0}, Landroid/net/ConnectivityManager$LegacyRequest$1;-><init>(Landroid/net/ConnectivityManager$LegacyRequest;)V

    iput-object v0, p0, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ConnectivityManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/ConnectivityManager$1;

    .line 1515
    invoke-direct {p0}, Landroid/net/ConnectivityManager$LegacyRequest;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/ConnectivityManager$LegacyRequest;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/ConnectivityManager$LegacyRequest;

    .line 1515
    invoke-direct {p0}, Landroid/net/ConnectivityManager$LegacyRequest;->clearDnsBinding()V

    return-void
.end method

.method private clearDnsBinding()V
    .locals 1

    .line 1523
    iget-object v0, p0, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    .line 1524
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;

    .line 1525
    invoke-static {v0}, Landroid/net/ConnectivityManager;->setProcessDefaultNetworkForHostResolution(Landroid/net/Network;)Z

    .line 1527
    :cond_0
    return-void
.end method