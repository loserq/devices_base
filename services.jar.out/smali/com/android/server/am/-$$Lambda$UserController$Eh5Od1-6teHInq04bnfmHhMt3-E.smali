.class public final synthetic Lcom/android/server/am/-$$Lambda$UserController$Eh5Od1-6teHInq04bnfmHhMt3-E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/UserController;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$UserController$Eh5Od1-6teHInq04bnfmHhMt3-E;->f$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$UserController$Eh5Od1-6teHInq04bnfmHhMt3-E;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$UserController$Eh5Od1-6teHInq04bnfmHhMt3-E;->f$0:Lcom/android/server/am/UserController;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$UserController$Eh5Od1-6teHInq04bnfmHhMt3-E;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/am/UserController;->lambda$handleMessage$6(Lcom/android/server/am/UserController;I)V

    return-void
.end method
