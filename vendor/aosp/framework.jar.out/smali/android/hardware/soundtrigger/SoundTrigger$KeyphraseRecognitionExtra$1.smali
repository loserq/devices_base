.class Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra$1;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1041
    invoke-static {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->access$600(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1039
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .locals 1
    .param p1, "size"    # I

    .line 1045
    new-array v0, p1, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1039
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra$1;->newArray(I)[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    move-result-object p1

    return-object p1
.end method