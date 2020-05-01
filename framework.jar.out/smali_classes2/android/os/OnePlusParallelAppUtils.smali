.class public Landroid/os/OnePlusParallelAppUtils;
.super Ljava/lang/Object;
.source "OnePlusParallelAppUtils.java"


# static fields
.field private static final BASIC_PARALLEL_APPS:[Ljava/lang/String;

.field public static final DBG:Z

.field public static final DBG_ALL:Z

.field public static final DBG_DUMPDSATCK:Z

.field public static final DBG_DUMPVSATCK:Z

.field private static final IS_PARALLEL_APP_FEATURE:Z

.field private static final TAG:Ljava/lang/String; = "OnePlusParallelAppUtils"

.field private static WHITE_AUTH_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Landroid/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURE:Z

    .line 53
    const-string v2, "android"

    const-string v3, "com.google.android.webview"

    const-string v4, "com.android.webview"

    const-string v5, "com.android.keychain"

    const-string v6, "com.google.android.packageinstaller"

    const-string v7, "com.android.packageinstaller"

    const-string v8, "com.android.providers.telephony"

    const-string v9, "com.android.providers.calendar"

    const-string v10, "com.android.providers.media"

    const-string v11, "com.android.documentsui"

    const-string v12, "com.android.externalstorage"

    const-string v13, "com.android.providers.downloads"

    const-string v14, "com.android.providers.settings"

    const-string v15, "com.android.server.telecom"

    const-string v16, "com.google.android.gms"

    const-string v17, "com.google.android.gsf"

    const-string v18, "com.qualcomm.qti.tetherservice"

    const-string v19, "com.android.vpndialogs"

    const-string v20, "com.android.phone"

    const-string v21, "com.android.providers.contacts"

    const-string v22, "com.android.settings"

    const-string v23, "com.oneplus"

    const-string v24, "com.android.printspooler"

    const-string v25, "com.oneplus.ifaaservice"

    const-string v26, "com.tencent.soter.soterserver"

    filled-new-array/range {v2 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/OnePlusParallelAppUtils;->BASIC_PARALLEL_APPS:[Ljava/lang/String;

    .line 83
    const-string/jumbo v2, "media"

    const-string v3, "com.android.contacts"

    const-string v4, "contacts;com.android.contacts"

    const-string v5, "contacts;com.android.contacts;com.oneplus.contacts"

    const-string v6, "com.android.contacts.files"

    const-string v7, "com.oneplus.note.fileProvider"

    const-string v8, "com.google.android.apps.photos.contentprovider"

    const-string v9, "com.android.externalstorage.documents"

    const-string/jumbo v10, "oneplus.gallery"

    const-string v11, "com.google.android.apps.docs.storage"

    const-string v12, "com.oneplus.security.database.SafeProvider"

    const-string/jumbo v13, "mms"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/OnePlusParallelAppUtils;->WHITE_AUTH_LIST:[Ljava/lang/String;

    .line 166
    const-string/jumbo v0, "persist.debug.onepluspa.all"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    .line 168
    const-string/jumbo v0, "persist.debug.onepluspa.stackd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_DUMPDSATCK:Z

    .line 170
    const-string/jumbo v0, "persist.debug.onepluspa.stackv"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_DUMPVSATCK:Z

    .line 173
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sget-boolean v1, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    or-int/2addr v0, v1

    sput-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBasicParallelApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgname"    # Ljava/lang/String;

    .line 162
    sget-object v0, Landroid/os/OnePlusParallelAppUtils;->BASIC_PARALLEL_APPS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isParallelAuth(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p0, "FUNC_TAG"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "auth"    # Ljava/lang/String;

    .line 120
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroid/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    sget-object v0, Landroid/os/OnePlusParallelAppUtils;->WHITE_AUTH_LIST:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 123
    .local v4, "authority":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "OnePlusParallelAppUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": isParallelAuth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 122
    .end local v4    # "authority":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    :cond_2
    return v1
.end method

.method public static isParallelAuth(Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6
    .param p0, "FUNC_TAG"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "isSystemApp"    # Z

    .line 135
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    invoke-static {p1}, Landroid/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 138
    return v1

    .line 141
    :cond_0
    sget-object v0, Landroid/os/OnePlusParallelAppUtils;->WHITE_AUTH_LIST:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 142
    .local v4, "authority":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    if-eqz v0, :cond_1

    .line 144
    const-string v0, "OnePlusParallelAppUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": isParallelAuth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 141
    .end local v4    # "authority":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    :cond_3
    return v1
.end method

.method public static isParallelAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "FUNC_TAG"    # Ljava/lang/String;
    .param p1, "auth"    # Ljava/lang/String;

    .line 104
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 107
    sget-object v0, Landroid/os/OnePlusParallelAppUtils;->WHITE_AUTH_LIST:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 108
    .local v4, "authority":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "OnePlusParallelAppUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": isParallelAuth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 107
    .end local v4    # "authority":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :cond_2
    return v1
.end method

.method public static isParallelUser(I)Z
    .locals 3
    .param p0, "userId"    # I

    .line 153
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURE:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e7

    if-ne p0, v0, :cond_1

    .line 154
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusParallelAppUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isParallelUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static pLogd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "FUNC_TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 100
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusParallelAppUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Landroid/os/OnePlusParallelAppUtils;->DBG_DUMPDSATCK:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :cond_1
    return-void
.end method

.method public static pLogv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "FUNC_TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 96
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusParallelAppUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Landroid/os/OnePlusParallelAppUtils;->DBG_DUMPVSATCK:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :cond_1
    return-void
.end method
