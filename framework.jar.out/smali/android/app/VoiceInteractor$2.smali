.class Landroid/app/VoiceInteractor$2;
.super Lcom/android/internal/app/IVoiceInteractorCallback$Stub;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/VoiceInteractor;


# direct methods
.method constructor <init>(Landroid/app/VoiceInteractor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/VoiceInteractor;

    .line 157
    iput-object p1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractorCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public deliverAbortVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 180
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v1, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 182
    return-void
.end method

.method public deliverCancel(Lcom/android/internal/app/IVoiceInteractorRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v1, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 195
    return-void
.end method

.method public deliverCommandResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "complete"    # Z
    .param p3, "result"    # Landroid/os/Bundle;

    .line 187
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v1, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 188
    nop

    .line 187
    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 189
    return-void
.end method

.method public deliverCompleteVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 174
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v1, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 176
    return-void
.end method

.method public deliverConfirmationResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "finished"    # Z
    .param p3, "result"    # Landroid/os/Bundle;

    .line 161
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v1, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 162
    nop

    .line 161
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 163
    return-void
.end method

.method public deliverPickOptionResult(Lcom/android/internal/app/IVoiceInteractorRequest;Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "finished"    # Z
    .param p3, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p4, "result"    # Landroid/os/Bundle;

    .line 168
    iget-object v0, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v0, v0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/app/VoiceInteractor$2;->this$0:Landroid/app/VoiceInteractor;

    iget-object v2, v1, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 169
    nop

    .line 168
    const/4 v3, 0x2

    move v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOOO(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 170
    return-void
.end method
