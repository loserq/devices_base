.class Lcom/android/server/ConnectivityService$2;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/net/metrics/IpConnectivityLog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 975
    iput-object p1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 978
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 980
    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/server/ConnectivityService;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 981
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    .line 982
    .local v1, "jsonArr":Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;Lorg/json/JSONArray;)V

    .line 983
    nop

    .line 987
    .end local v0    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    .end local v1    # "jsonArr":Lorg/json/JSONArray;
    :goto_0
    return-void
.end method
