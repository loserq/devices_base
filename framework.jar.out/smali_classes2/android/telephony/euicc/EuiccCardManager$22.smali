.class Landroid/telephony/euicc/EuiccCardManager$22;
.super Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback$Stub;
.source "EuiccCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/euicc/EuiccCardManager;->removeNotificationFromList(Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/euicc/EuiccCardManager;

.field final synthetic val$callback:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/euicc/EuiccCardManager;

    .line 712
    iput-object p1, p0, Landroid/telephony/euicc/EuiccCardManager$22;->this$0:Landroid/telephony/euicc/EuiccCardManager;

    iput-object p2, p0, Landroid/telephony/euicc/EuiccCardManager$22;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/euicc/EuiccCardManager$22;->val$callback:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onComplete$0(Landroid/telephony/euicc/EuiccCardManager$ResultCallback;I)V
    .locals 1
    .param p0, "callback"    # Landroid/telephony/euicc/EuiccCardManager$ResultCallback;
    .param p1, "resultCode"    # I

    .line 715
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/telephony/euicc/EuiccCardManager$ResultCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3
    .param p1, "resultCode"    # I

    .line 715
    iget-object v0, p0, Landroid/telephony/euicc/EuiccCardManager$22;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/euicc/EuiccCardManager$22;->val$callback:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

    new-instance v2, Landroid/telephony/euicc/-$$Lambda$EuiccCardManager$22$JpF6e8fcw8874GZTA7KUvqsNhY8;

    invoke-direct {v2, v1, p1}, Landroid/telephony/euicc/-$$Lambda$EuiccCardManager$22$JpF6e8fcw8874GZTA7KUvqsNhY8;-><init>(Landroid/telephony/euicc/EuiccCardManager$ResultCallback;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 716
    return-void
.end method
