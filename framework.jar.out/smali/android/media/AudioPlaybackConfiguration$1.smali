.class Landroid/media/AudioPlaybackConfiguration$1;
.super Ljava/lang/Object;
.source "AudioPlaybackConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioPlaybackConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/AudioPlaybackConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioPlaybackConfiguration;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .line 441
    new-instance v0, Landroid/media/AudioPlaybackConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/AudioPlaybackConfiguration;-><init>(Landroid/os/Parcel;Landroid/media/AudioPlaybackConfiguration$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 434
    invoke-virtual {p0, p1}, Landroid/media/AudioPlaybackConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioPlaybackConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/AudioPlaybackConfiguration;
    .locals 1
    .param p1, "size"    # I

    .line 444
    new-array v0, p1, [Landroid/media/AudioPlaybackConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 434
    invoke-virtual {p0, p1}, Landroid/media/AudioPlaybackConfiguration$1;->newArray(I)[Landroid/media/AudioPlaybackConfiguration;

    move-result-object p1

    return-object p1
.end method
