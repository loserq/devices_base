.class public Lcom/android/server/wm/KeyguardDisableHandler;
.super Landroid/os/Handler;
.source "KeyguardDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;
    }
.end annotation


# static fields
.field private static final ALLOW_DISABLE_NO:I = 0x0

.field private static final ALLOW_DISABLE_UNKNOWN:I = -0x1

.field private static final ALLOW_DISABLE_YES:I = 0x1

.field static final KEYGUARD_DISABLE:I = 0x1

.field static final KEYGUARD_POLICY_CHANGED:I = 0x3

.field static final KEYGUARD_REENABLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mAllowDisableKeyguard:I

.field final mContext:Landroid/content/Context;

.field mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

.field final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;

    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I

    .line 53
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/KeyguardDisableHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/KeyguardDisableHandler;

    .line 35
    iget v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/wm/KeyguardDisableHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/KeyguardDisableHandler;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I

    return p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    invoke-direct {v0, p0, p0}, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;-><init>(Lcom/android/server/wm/KeyguardDisableHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    .line 64
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 75
    :pswitch_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I

    .line 76
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->isAcquired()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->updateAllowState()V

    .line 80
    iget v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAllowDisableKeyguard:I

    if-eq v0, v1, :cond_2

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->enableKeyguard(Z)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->enableKeyguard(Z)V

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->release(Landroid/os/IBinder;)V

    .line 72
    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 67
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mKeyguardTokenWatcher:Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/KeyguardDisableHandler$KeyguardTokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 68
    nop

    .line 89
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Ljava/lang/String;>;"
    :cond_2
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
