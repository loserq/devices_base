.class public abstract Landroid/media/tv/ITvInputManagerCallback$Stub;
.super Landroid/os/Binder;
.source "ITvInputManagerCallback.java"

# interfaces
.implements Landroid/media/tv/ITvInputManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputManagerCallback"

.field static final TRANSACTION_onInputAdded:I = 0x1

.field static final TRANSACTION_onInputRemoved:I = 0x2

.field static final TRANSACTION_onInputStateChanged:I = 0x4

.field static final TRANSACTION_onInputUpdated:I = 0x3

.field static final TRANSACTION_onTvInputInfoUpdated:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.media.tv.ITvInputManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManagerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "android.media.tv.ITvInputManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvInputManagerCallback;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Landroid/media/tv/ITvInputManagerCallback;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const-string v0, "android.media.tv.ITvInputManagerCallback"

    .line 43
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 86
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    sget-object v1, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputInfo;

    .local v1, "_arg0":Landroid/media/tv/TvInputInfo;
    goto :goto_0

    .line 92
    .end local v1    # "_arg0":Landroid/media/tv/TvInputInfo;
    :cond_0
    const/4 v1, 0x0

    .line 94
    .restart local v1    # "_arg0":Landroid/media/tv/TvInputInfo;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V

    .line 95
    return v2

    .line 76
    .end local v1    # "_arg0":Landroid/media/tv/TvInputInfo;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onInputStateChanged(Ljava/lang/String;I)V

    .line 82
    return v2

    .line 68
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onInputUpdated(Ljava/lang/String;)V

    .line 72
    return v2

    .line 60
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onInputRemoved(Ljava/lang/String;)V

    .line 64
    return v2

    .line 52
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onInputAdded(Ljava/lang/String;)V

    .line 56
    return v2

    .line 47
    .end local v1    # "_arg0":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
