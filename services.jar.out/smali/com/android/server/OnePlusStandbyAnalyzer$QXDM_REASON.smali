.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QXDM_REASON"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

.field public static final enum INVALID_STANDBY_PERIOD:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

.field public static final enum MODEM_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

.field public static final enum REACH_120SEC_TIMEOUT:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

.field public static final enum TELE_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

.field public static final enum VALID_STANDBY_PERIOD:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1106
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    const-string v1, "TELE_ABN_TRIGGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->TELE_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    .line 1107
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    const-string v1, "MODEM_ABN_TRIGGER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->MODEM_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    .line 1108
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    const-string v1, "REACH_120SEC_TIMEOUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->REACH_120SEC_TIMEOUT:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    .line 1109
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    const-string v1, "VALID_STANDBY_PERIOD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->VALID_STANDBY_PERIOD:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    .line 1110
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    const-string v1, "INVALID_STANDBY_PERIOD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->INVALID_STANDBY_PERIOD:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    .line 1105
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->TELE_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->MODEM_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->REACH_120SEC_TIMEOUT:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->VALID_STANDBY_PERIOD:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->INVALID_STANDBY_PERIOD:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1105
    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;
    .locals 1

    .line 1105
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    invoke-virtual {v0}, [Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    return-object v0
.end method
