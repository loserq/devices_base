.class Landroid/app/ExitTransitionCoordinator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->fadeOutBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ExitTransitionCoordinator;

    .line 300
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 303
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ExitTransitionCoordinator;->access$802(Landroid/app/ExitTransitionCoordinator;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 304
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->access$500(Landroid/app/ExitTransitionCoordinator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/app/ExitTransitionCoordinator;->access$902(Landroid/app/ExitTransitionCoordinator;Z)Z

    .line 306
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->notifyComplete()V

    .line 308
    :cond_0
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$7;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->backgroundAnimatorComplete()V

    .line 309
    return-void
.end method
