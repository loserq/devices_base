.class final Lcom/android/server/OverHeatingDiagnosis$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UidObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 1346
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$UidObserver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1359
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1353
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1356
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1362
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1349
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$UidObserver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/OverHeatingDiagnosis;->handleOnUidStateChanged(II)V

    .line 1350
    return-void
.end method
