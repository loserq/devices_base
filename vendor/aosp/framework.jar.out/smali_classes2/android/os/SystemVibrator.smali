.class public Landroid/os/SystemVibrator;
.super Landroid/os/Vibrator;
.source "SystemVibrator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field private mService:Landroid/os/IVibratorService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    .line 41
    const-string/jumbo v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0, p1}, Landroid/os/Vibrator;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    .line 46
    const-string/jumbo v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    .line 47
    return-void
.end method

.method private ensureServiceOk()Z
    .locals 2

    .line 52
    const-string/jumbo v0, "vibrator"

    .line 53
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    .line 54
    const-string v0, "Vibrator"

    const-string/jumbo v1, "try to get vibrator Service again"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static usageForAttributes(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "attributes"    # Landroid/media/AudioAttributes;

    .line 124
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 129
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0}, Landroid/os/SystemVibrator;->ensureServiceOk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    return-void

    .line 141
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v1, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/os/IVibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to cancel vibration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public hasAmplitudeControl()Z
    .locals 3

    .line 82
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 83
    const-string v0, "Vibrator"

    const-string v2, "Failed to check amplitude control; no vibrator service."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, Landroid/os/SystemVibrator;->ensureServiceOk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    return v1

    .line 95
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0}, Landroid/os/IVibratorService;->hasAmplitudeControl()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 96
    :catch_0
    move-exception v0

    .line 98
    return v1
.end method

.method public hasVibrator()Z
    .locals 3

    .line 61
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 62
    const-string v0, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Landroid/os/SystemVibrator;->ensureServiceOk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    return v1

    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0}, Landroid/os/IVibratorService;->hasVibrator()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 75
    :catch_0
    move-exception v0

    .line 77
    return v1
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "attributes"    # Landroid/media/AudioAttributes;

    .line 104
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_0

    .line 105
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Landroid/os/SystemVibrator;->ensureServiceOk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    return-void

    .line 117
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {p4}, Landroid/os/SystemVibrator;->usageForAttributes(Landroid/media/AudioAttributes;)I

    move-result v5

    iget-object v6, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Landroid/os/IVibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
