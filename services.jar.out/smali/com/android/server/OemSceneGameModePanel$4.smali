.class Lcom/android/server/OemSceneGameModePanel$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OemSceneGameModePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModePanel;->startShownAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModePanel;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModePanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneGameModePanel;

    .line 354
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel$4;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 363
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$4;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$4;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneGameModeView;->doSomething(I)V

    .line 366
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 357
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$4;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$4;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneGameModeView;->setVisibility(I)V

    .line 360
    :cond_0
    return-void
.end method
