.class public Lcom/android/server/audio/AudioService$VolumeController;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeController"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeController"


# instance fields
.field private mController:Landroid/media/IVolumeController;

.field private mLongPressTimeout:I

.field private mNextLongPress:J

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;
    .locals 1
    .param p0, "controller"    # Landroid/media/IVolumeController;

    .line 8690
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 8686
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isSameBinder(Landroid/media/IVolumeController;)Z
    .locals 2
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .line 8682
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadSettings(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 8647
    const-string/jumbo v0, "long_press_timeout"

    const/16 v1, 0x1f4

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    .line 8649
    return-void
.end method

.method public postDismiss()V
    .locals 3

    .line 8739
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 8740
    return-void

    .line 8742
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0}, Landroid/media/IVolumeController;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8745
    goto :goto_0

    .line 8743
    :catch_0
    move-exception v0

    .line 8744
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling dismiss"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8746
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 8699
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 8700
    return-void

    .line 8702
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->displaySafeVolumeWarning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8705
    goto :goto_0

    .line 8703
    :catch_0
    move-exception v0

    .line 8704
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling displaySafeVolumeWarning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8706
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public postMasterMuteChanged(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 8719
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 8720
    return-void

    .line 8722
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->masterMuteChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8725
    goto :goto_0

    .line 8723
    :catch_0
    move-exception v0

    .line 8724
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling masterMuteChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8726
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public postVolumeChanged(II)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .line 8709
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 8710
    return-void

    .line 8712
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0, p1, p2}, Landroid/media/IVolumeController;->volumeChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8715
    goto :goto_0

    .line 8713
    :catch_0
    move-exception v0

    .line 8714
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling volumeChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8716
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setA11yMode(I)V
    .locals 3
    .param p1, "a11yMode"    # I

    .line 8749
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 8750
    return-void

    .line 8752
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->setA11yMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8755
    goto :goto_0

    .line 8753
    :catch_0
    move-exception v0

    .line 8754
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling setA11Mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8756
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setController(Landroid/media/IVolumeController;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .line 8642
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    .line 8643
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    .line 8644
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .line 8729
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_0

    .line 8730
    return-void

    .line 8732
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->setLayoutDirection(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8735
    goto :goto_0

    .line 8733
    :catch_0
    move-exception v0

    .line 8734
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling setLayoutDirection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8736
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 8678
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    .line 8679
    return-void
.end method

.method public suppressAdjustment(IIZ)Z
    .locals 7
    .param p1, "resolvedStream"    # I
    .param p2, "flags"    # I
    .param p3, "isMute"    # Z

    .line 8652
    if-eqz p3, :cond_0

    .line 8653
    const/4 v0, 0x0

    return v0

    .line 8655
    :cond_0
    const/4 v0, 0x0

    .line 8656
    .local v0, "suppress":Z
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-eqz v1, :cond_4

    .line 8657
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 8658
    .local v1, "now":J
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    if-nez v3, :cond_2

    .line 8660
    iget-wide v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    cmp-long v3, v3, v1

    if-gez v3, :cond_1

    .line 8661
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    int-to-long v3, v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    .line 8663
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 8664
    :cond_2
    iget-wide v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 8665
    iget-wide v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 8667
    iput-wide v5, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    goto :goto_0

    .line 8670
    :cond_3
    const/4 v0, 0x1

    .line 8674
    .end local v1    # "now":J
    :cond_4
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 8695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
