.class public Lcom/android/server/OemSceneAutoBrightnessController;
.super Ljava/lang/Object;
.source "OemSceneAutoBrightnessController.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;,
        Lcom/android/server/OemSceneAutoBrightnessController$BlockAutoBackLightSettingsContentObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MSG_BLOCK_AUTO_BACK_LIGHT_SETTING_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OemSceneAutoBrightnessController"

.field private static final URI_AUTO_BACKLIGHT_SETTING:Landroid/net/Uri;

.field private static final URI_BLOCK_AUTO_BACKLIGHT_SETTING:Landroid/net/Uri;

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static sInstance:Lcom/android/server/OemSceneAutoBrightnessController;


# instance fields
.field private mAutoBackLightSettingsContentObserver:Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;

.field private mBlockAutoBackLightSettingsContentObserver:Lcom/android/server/OemSceneAutoBrightnessController$BlockAutoBackLightSettingsContentObserver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoBackSettingChangedByUs:Z

.field private mIsAutoBackSettingChangedByUsWhenBoot:Z

.field private mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

.field private mResolver:Landroid/content/ContentResolver;

.field private mUser:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneAutoBrightnessController;->DBG:Z

    .line 55
    const-string v0, "game_mode_close_automatic_brightness"

    .line 56
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneAutoBrightnessController;->URI_BLOCK_AUTO_BACKLIGHT_SETTING:Landroid/net/Uri;

    .line 57
    const-string/jumbo v0, "screen_brightness_mode"

    .line 58
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneAutoBrightnessController;->URI_AUTO_BACKLIGHT_SETTING:Landroid/net/Uri;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUs:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUsWhenBoot:Z

    .line 54
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mHandler:Landroid/os/Handler;

    .line 59
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mUser:I

    .line 70
    iput-object p1, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mResolver:Landroid/content/ContentResolver;

    .line 75
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    new-instance v3, Lcom/android/server/OemSceneAutoBrightnessController$1;

    invoke-direct {v3, p0}, Lcom/android/server/OemSceneAutoBrightnessController$1;-><init>(Lcom/android/server/OemSceneAutoBrightnessController;)V

    const-class v4, Lcom/android/server/OemSceneAutoBrightnessController;

    .line 81
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    .line 86
    :goto_0
    invoke-direct {p0}, Lcom/android/server/OemSceneAutoBrightnessController;->getNeedToRestoreAutoBacklight()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 90
    iput-boolean v5, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUsWhenBoot:Z

    .line 93
    invoke-direct {p0, v0}, Lcom/android/server/OemSceneAutoBrightnessController;->setNeedToRestoreAutoBacklight(Z)V

    .line 96
    :cond_0
    new-instance v2, Lcom/android/server/OemSceneAutoBrightnessController$BlockAutoBackLightSettingsContentObserver;

    iget-object v3, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/OemSceneAutoBrightnessController$BlockAutoBackLightSettingsContentObserver;-><init>(Lcom/android/server/OemSceneAutoBrightnessController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mBlockAutoBackLightSettingsContentObserver:Lcom/android/server/OemSceneAutoBrightnessController$BlockAutoBackLightSettingsContentObserver;

    .line 98
    iget-object v2, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/OemSceneAutoBrightnessController;->URI_BLOCK_AUTO_BACKLIGHT_SETTING:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mBlockAutoBackLightSettingsContentObserver:Lcom/android/server/OemSceneAutoBrightnessController$BlockAutoBackLightSettingsContentObserver;

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 100
    new-instance v2, Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;

    iget-object v3, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;-><init>(Lcom/android/server/OemSceneAutoBrightnessController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mAutoBackLightSettingsContentObserver:Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;

    .line 102
    iget-object v2, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/OemSceneAutoBrightnessController;->URI_AUTO_BACKLIGHT_SETTING:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mAutoBackLightSettingsContentObserver:Lcom/android/server/OemSceneAutoBrightnessController$AutoBackLightSettingsContentObserver;

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 104
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 40
    sget-boolean v0, Lcom/android/server/OemSceneAutoBrightnessController;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneAutoBrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneAutoBrightnessController;

    .line 40
    iget v0, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mUser:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/OemSceneAutoBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneAutoBrightnessController;

    .line 40
    iget-boolean v0, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUsWhenBoot:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/OemSceneAutoBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneAutoBrightnessController;
    .param p1, "x1"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUsWhenBoot:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/OemSceneAutoBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneAutoBrightnessController;

    .line 40
    iget-boolean v0, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUs:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/OemSceneAutoBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneAutoBrightnessController;
    .param p1, "x1"    # Z

    .line 40
    iput-boolean p1, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUs:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/OemSceneAutoBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneAutoBrightnessController;

    .line 40
    invoke-direct {p0}, Lcom/android/server/OemSceneAutoBrightnessController;->getNeedToRestoreAutoBacklight()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/OemSceneAutoBrightnessController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemSceneAutoBrightnessController;
    .param p1, "x1"    # Z

    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneAutoBrightnessController;->setNeedToRestoreAutoBacklight(Z)V

    return-void
.end method

.method private getGameModeAutoBrightnessBlocked()Z
    .locals 4

    .line 231
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_close_automatic_brightness"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAutoBrightnessController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    sget-object v0, Lcom/android/server/OemSceneAutoBrightnessController;->sInstance:Lcom/android/server/OemSceneAutoBrightnessController;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneAutoBrightnessController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/OemSceneAutoBrightnessController;->sInstance:Lcom/android/server/OemSceneAutoBrightnessController;

    .line 67
    :cond_0
    sget-object v0, Lcom/android/server/OemSceneAutoBrightnessController;->sInstance:Lcom/android/server/OemSceneAutoBrightnessController;

    return-object v0
.end method

.method private getNeedToRestoreAutoBacklight()Z
    .locals 4

    .line 221
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_need_to_restore_automatic_brightness"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setNeedToRestoreAutoBacklight(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 226
    iget-object v0, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_need_to_restore_automatic_brightness"

    .line 227
    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    .line 226
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 228
    return-void
.end method

.method private setupAutoBrightnessMode(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .line 189
    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 190
    iget-object v3, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v3, v4, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 191
    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 192
    .local v3, "needToDisableAutoBacklight":Z
    :goto_0
    sget-boolean v4, Lcom/android/server/OemSceneAutoBrightnessController;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "OemSceneAutoBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[scene] needToDisableAutoBacklight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    if-eqz v3, :cond_2

    .line 194
    iget-object v4, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_brightness_mode"

    invoke-static {v4, v5, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 197
    iput-boolean v2, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUs:Z

    .line 200
    invoke-direct {p0, v2}, Lcom/android/server/OemSceneAutoBrightnessController;->setNeedToRestoreAutoBacklight(Z)V

    goto :goto_1

    .line 203
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/OemSceneAutoBrightnessController;->setNeedToRestoreAutoBacklight(Z)V

    .line 205
    .end local v3    # "needToDisableAutoBacklight":Z
    :goto_1
    goto :goto_2

    .line 206
    :cond_3
    sget-boolean v3, Lcom/android/server/OemSceneAutoBrightnessController;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "OemSceneAutoBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[scene] needToRestoreAutoBacklight? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/OemSceneAutoBrightnessController;->getNeedToRestoreAutoBacklight()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_4
    invoke-direct {p0}, Lcom/android/server/OemSceneAutoBrightnessController;->getNeedToRestoreAutoBacklight()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 208
    iget-object v3, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 211
    iput-boolean v2, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUs:Z

    .line 214
    invoke-direct {p0, v1}, Lcom/android/server/OemSceneAutoBrightnessController;->setNeedToRestoreAutoBacklight(Z)V

    .line 217
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 183
    sget-boolean v0, Lcom/android/server/OemSceneAutoBrightnessController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneAutoBrightnessController"

    const-string v1, "[scene] TurnOffAutoBacklight: config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 171
    sget-boolean v0, Lcom/android/server/OemSceneAutoBrightnessController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneAutoBrightnessController"

    const-string v1, "[scene] TurnOffAutoBacklight: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneAutoBrightnessController;->setupAutoBrightnessMode(Z)V

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 177
    sget-boolean v0, Lcom/android/server/OemSceneAutoBrightnessController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneAutoBrightnessController"

    const-string v1, "[scene] TurnOffAutoBacklight: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneAutoBrightnessController;->setupAutoBrightnessMode(Z)V

    .line 179
    return v0
.end method

.method public updateFunctionRule(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 143
    :try_start_0
    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OIMCService$LocalService;

    .line 145
    .local v0, "mLocalOIMCService":Lcom/oneplus/server/OIMCService$LocalService;
    sget-boolean v1, Lcom/android/server/OemSceneAutoBrightnessController;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "OemSceneAutoBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] mUser = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", update for user = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget v1, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mUser:I

    if-eq v1, p1, :cond_2

    .line 149
    sget-boolean v1, Lcom/android/server/OemSceneAutoBrightnessController;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "OemSceneAutoBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] removeFuncRule for blocking auto brightness "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_AutoBacklight:Lcom/oneplus/oimc/OIMCRule;

    iget v2, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mUser:I

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/server/OIMCService$LocalService;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    .line 154
    :cond_2
    invoke-direct {p0}, Lcom/android/server/OemSceneAutoBrightnessController;->getGameModeAutoBrightnessBlocked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 155
    sget-boolean v1, Lcom/android/server/OemSceneAutoBrightnessController;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "OemSceneAutoBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] addFuncRule for blocking auto brightness for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_3
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_AutoBacklight:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/server/OIMCService$LocalService;->addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    goto :goto_0

    .line 158
    :cond_4
    sget-boolean v1, Lcom/android/server/OemSceneAutoBrightnessController;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "OemSceneAutoBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] removeFuncRule for blocking auto brightness "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_5
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_AutoBacklight:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/server/OIMCService$LocalService;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    .line 162
    :goto_0
    iput p1, p0, Lcom/android/server/OemSceneAutoBrightnessController;->mUser:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0    # "mLocalOIMCService":Lcom/oneplus/server/OIMCService$LocalService;
    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemSceneAutoBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFunctionRule error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
