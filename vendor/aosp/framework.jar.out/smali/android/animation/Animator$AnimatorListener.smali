.class public interface abstract Landroid/animation/Animator$AnimatorListener;
.super Ljava/lang/Object;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnimatorListener"
.end annotation


# virtual methods
.method public abstract onAnimationCancel(Landroid/animation/Animator;)V
.end method

.method public abstract onAnimationEnd(Landroid/animation/Animator;)V
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "isReverse"    # Z

    .line 552
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 553
    return-void
.end method

.method public abstract onAnimationRepeat(Landroid/animation/Animator;)V
.end method

.method public abstract onAnimationStart(Landroid/animation/Animator;)V
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "isReverse"    # Z

    .line 536
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 537
    return-void
.end method
