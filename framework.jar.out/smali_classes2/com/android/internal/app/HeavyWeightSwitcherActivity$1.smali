.class Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;
.super Ljava/lang/Object;
.source "HeavyWeightSwitcherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/HeavyWeightSwitcherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 126
    iput-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 129
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    iget v1, v1, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurTask:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->finish()V

    .line 133
    return-void
.end method
