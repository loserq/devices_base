.class public final enum Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;
.super Ljava/lang/Enum;
.source "SsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TeleserviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum SS_ALL_DATA_TELESERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum SS_ALL_TELESERVICES_EXCEPT_SMS:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum SS_ALL_TELESEVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum SS_ALL_TELE_AND_BEARER_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum SS_SMS_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

.field public static final enum SS_TELEPHONY:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 97
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    const-string v1, "SS_ALL_TELE_AND_BEARER_SERVICES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELE_AND_BEARER_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 98
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    const-string v1, "SS_ALL_TELESEVICES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELESEVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 99
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    const-string v1, "SS_TELEPHONY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_TELEPHONY:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    const-string v1, "SS_ALL_DATA_TELESERVICES"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_DATA_TELESERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    const-string v1, "SS_SMS_SERVICES"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_SMS_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    const-string v1, "SS_ALL_TELESERVICES_EXCEPT_SMS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELESERVICES_EXCEPT_SMS:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    .line 96
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELE_AND_BEARER_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELESEVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_TELEPHONY:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_DATA_TELESERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_SMS_SERVICES:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->SS_ALL_TELESERVICES_EXCEPT_SMS:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 96
    const-class v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;
    .locals 1

    .line 96
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    return-object v0
.end method