.class Landroid/os/StatsDimensionsValue$1;
.super Ljava/lang/Object;
.source "StatsDimensionsValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StatsDimensionsValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/StatsDimensionsValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/StatsDimensionsValue;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 270
    new-instance v0, Landroid/os/StatsDimensionsValue;

    invoke-direct {v0, p1}, Landroid/os/StatsDimensionsValue;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 268
    invoke-virtual {p0, p1}, Landroid/os/StatsDimensionsValue$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/StatsDimensionsValue;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/StatsDimensionsValue;
    .locals 1
    .param p1, "size"    # I

    .line 274
    new-array v0, p1, [Landroid/os/StatsDimensionsValue;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 268
    invoke-virtual {p0, p1}, Landroid/os/StatsDimensionsValue$1;->newArray(I)[Landroid/os/StatsDimensionsValue;

    move-result-object p1

    return-object p1
.end method
