.class public abstract Landroid/service/textclassifier/ITextSelectionCallback$Stub;
.super Landroid/os/Binder;
.source "ITextSelectionCallback.java"

# interfaces
.implements Landroid/service/textclassifier/ITextSelectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textclassifier/ITextSelectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textclassifier/ITextSelectionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.textclassifier.ITextSelectionCallback"

.field static final TRANSACTION_onFailure:I = 0x2

.field static final TRANSACTION_onSuccess:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.service.textclassifier.ITextSelectionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/textclassifier/ITextSelectionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/textclassifier/ITextSelectionCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    const-string v0, "android.service.textclassifier.ITextSelectionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/textclassifier/ITextSelectionCallback;

    if-eqz v1, :cond_1

    .line 32
    move-object v1, v0

    check-cast v1, Landroid/service/textclassifier/ITextSelectionCallback;

    return-object v1

    .line 34
    :cond_1
    new-instance v1, Landroid/service/textclassifier/ITextSelectionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/textclassifier/ITextSelectionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const-string v0, "android.service.textclassifier.ITextSelectionCallback"

    .line 43
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 65
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/service/textclassifier/ITextSelectionCallback$Stub;->onFailure()V

    .line 67
    return v2

    .line 52
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Landroid/view/textclassifier/TextSelection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextSelection;

    .local v1, "_arg0":Landroid/view/textclassifier/TextSelection;
    goto :goto_0

    .line 58
    .end local v1    # "_arg0":Landroid/view/textclassifier/TextSelection;
    :cond_0
    const/4 v1, 0x0

    .line 60
    .restart local v1    # "_arg0":Landroid/view/textclassifier/TextSelection;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/service/textclassifier/ITextSelectionCallback$Stub;->onSuccess(Landroid/view/textclassifier/TextSelection;)V

    .line 61
    return v2

    .line 47
    .end local v1    # "_arg0":Landroid/view/textclassifier/TextSelection;
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
