.class Landroid/net/metrics/IpReachabilityEvent$1;
.super Ljava/lang/Object;
.source "IpReachabilityEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/IpReachabilityEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/metrics/IpReachabilityEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/metrics/IpReachabilityEvent;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 72
    new-instance v0, Landroid/net/metrics/IpReachabilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/net/metrics/IpReachabilityEvent;-><init>(Landroid/os/Parcel;Landroid/net/metrics/IpReachabilityEvent$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Landroid/net/metrics/IpReachabilityEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/metrics/IpReachabilityEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/metrics/IpReachabilityEvent;
    .locals 1
    .param p1, "size"    # I

    .line 76
    new-array v0, p1, [Landroid/net/metrics/IpReachabilityEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Landroid/net/metrics/IpReachabilityEvent$1;->newArray(I)[Landroid/net/metrics/IpReachabilityEvent;

    move-result-object p1

    return-object p1
.end method