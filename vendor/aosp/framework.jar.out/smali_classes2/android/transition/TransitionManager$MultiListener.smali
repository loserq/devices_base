.class Landroid/transition/TransitionManager$MultiListener;
.super Ljava/lang/Object;
.source "TransitionManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/TransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiListener"
.end annotation


# instance fields
.field mSceneRoot:Landroid/view/ViewGroup;

.field mTransition:Landroid/transition/Transition;

.field final mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Landroid/transition/Transition;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    .line 249
    iput-object p2, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 250
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 251
    return-void
.end method

.method private removeListeners()V
    .locals 1

    .line 254
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 259
    :goto_0
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 260
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .line 282
    invoke-direct {p0}, Landroid/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 285
    invoke-static {}, Landroid/transition/TransitionManager;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 286
    return v1

    .line 291
    :cond_0
    invoke-static {}, Landroid/transition/TransitionManager;->access$100()Landroid/util/ArrayMap;

    move-result-object v0

    .line 292
    .local v0, "runningTransitions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/transition/Transition;>;>;"
    iget-object v2, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 293
    .local v2, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    const/4 v3, 0x0

    .line 294
    .local v3, "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    if-nez v2, :cond_1

    .line 295
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 296
    iget-object v4, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 298
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v3, v4

    .line 300
    :cond_2
    :goto_0
    iget-object v4, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v4, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    new-instance v5, Landroid/transition/TransitionManager$MultiListener$1;

    invoke-direct {v5, p0, v0}, Landroid/transition/TransitionManager$MultiListener$1;-><init>(Landroid/transition/TransitionManager$MultiListener;Landroid/util/ArrayMap;)V

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 309
    iget-object v4, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 310
    if-eqz v3, :cond_3

    .line 311
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition;

    .line 312
    .local v5, "runningTransition":Landroid/transition/Transition;
    iget-object v6, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    .line 313
    .end local v5    # "runningTransition":Landroid/transition/Transition;
    goto :goto_1

    .line 315
    :cond_3
    iget-object v4, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->playTransition(Landroid/view/ViewGroup;)V

    .line 317
    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 264
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 268
    invoke-direct {p0}, Landroid/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 270
    invoke-static {}, Landroid/transition/TransitionManager;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 271
    invoke-static {}, Landroid/transition/TransitionManager;->access$100()Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 272
    .local v0, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 273
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    .line 274
    .local v2, "runningTransition":Landroid/transition/Transition;
    iget-object v3, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    .line 275
    .end local v2    # "runningTransition":Landroid/transition/Transition;
    goto :goto_0

    .line 277
    :cond_0
    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->clearValues(Z)V

    .line 278
    return-void
.end method
