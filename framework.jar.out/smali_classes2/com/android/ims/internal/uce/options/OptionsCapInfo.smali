.class public Lcom/android/ims/internal/uce/options/OptionsCapInfo;
.super Ljava/lang/Object;
.source "OptionsCapInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/options/OptionsCapInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

.field private mSdp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCapInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/CapInfo;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/options/OptionsCapInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/ims/internal/uce/options/OptionsCapInfo$1;

    .line 24
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCapInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getOptionsCapInfoInstance()Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .locals 1

    .line 30
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCapInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getCapInfo()Lcom/android/ims/internal/uce/common/CapInfo;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    return-object v0
.end method

.method public getSdp()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    .line 85
    const-class v0, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/CapInfo;

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 86
    return-void
.end method

.method public setCapInfo(Lcom/android/ims/internal/uce/common/CapInfo;)V
    .locals 0
    .param p1, "capInfo"    # Lcom/android/ims/internal/uce/common/CapInfo;

    .line 55
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 56
    return-void
.end method

.method public setSdp(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdp"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 63
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 65
    return-void
.end method
