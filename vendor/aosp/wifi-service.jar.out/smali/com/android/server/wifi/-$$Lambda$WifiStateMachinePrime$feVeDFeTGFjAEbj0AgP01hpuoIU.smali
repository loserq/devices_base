.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$feVeDFeTGFjAEbj0AgP01hpuoIU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiStateMachinePrime;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$feVeDFeTGFjAEbj0AgP01hpuoIU;->f$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiStateMachinePrime$feVeDFeTGFjAEbj0AgP01hpuoIU;->f$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachinePrime;->lambda$stopSoftAPMode$1(Lcom/android/server/wifi/WifiStateMachinePrime;)V

    return-void
.end method
