.class public abstract Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
.super Ljava/lang/Object;
.source "AudioPolicy.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AudioPolicyFocusListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    .locals 0
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 563
    return-void
.end method

.method public onAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    .locals 0
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .line 544
    return-void
.end method

.method public onAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    .locals 0
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasNotified"    # Z

    .line 545
    return-void
.end method

.method public onAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    .locals 0
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .line 555
    return-void
.end method