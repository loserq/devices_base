.class Landroid/app/usage/ExternalStorageStats$1;
.super Ljava/lang/Object;
.source "ExternalStorageStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/ExternalStorageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/usage/ExternalStorageStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/ExternalStorageStats;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 137
    new-instance v0, Landroid/app/usage/ExternalStorageStats;

    invoke-direct {v0, p1}, Landroid/app/usage/ExternalStorageStats;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Landroid/app/usage/ExternalStorageStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/ExternalStorageStats;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/usage/ExternalStorageStats;
    .locals 1
    .param p1, "size"    # I

    .line 142
    new-array v0, p1, [Landroid/app/usage/ExternalStorageStats;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Landroid/app/usage/ExternalStorageStats$1;->newArray(I)[Landroid/app/usage/ExternalStorageStats;

    move-result-object p1

    return-object p1
.end method
