.class Lcom/android/server/StorageManagerService$8;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;

    .line 1969
    iput-object p1, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$8;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 1976
    iget-object v0, p0, Lcom/android/server/StorageManagerService$8;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1977
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StorageManagerService$8;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1979
    :cond_0
    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 1973
    return-void
.end method
