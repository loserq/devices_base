.class Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;
.super Landroid/os/Handler;
.source "OnePlusDuallteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusDuallteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnePlusDuallteManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusDuallteManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusDuallteManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 167
    iput-object p1, p0, Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    .line 168
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 169
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 172
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage(): msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 182
    :pswitch_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusDuallteManager;->access$200(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Duallte"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusDuallteManager;->access$300(Lcom/android/server/am/OnePlusDuallteManager;Lorg/json/JSONArray;)V

    .line 184
    goto :goto_0

    .line 179
    .end local v0    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusDuallteManager;->access$100(Lcom/android/server/am/OnePlusDuallteManager;Z)Z

    .line 180
    goto :goto_0

    .line 176
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusDuallteManager;->access$000(Lcom/android/server/am/OnePlusDuallteManager;Ljava/lang/String;)V

    .line 177
    nop

    .line 188
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
