.class public final synthetic Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$FjqymoOlHfh38YnKZwagVaL8Jog;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$FjqymoOlHfh38YnKZwagVaL8Jog;->f$0:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$FjqymoOlHfh38YnKZwagVaL8Jog;->f$0:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->lambda$startWpsPinDisplay$11(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/String;)V

    return-void
.end method
