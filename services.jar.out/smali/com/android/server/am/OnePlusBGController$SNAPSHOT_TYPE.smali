.class public final enum Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SNAPSHOT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

.field public static final enum BUDGET_RESET:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

.field public static final enum CALCULATE:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

.field public static final enum INIT_OBSERVE:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

.field public static final enum ONESHOT:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 184
    new-instance v0, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    const-string v1, "INIT_OBSERVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->INIT_OBSERVE:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    .line 185
    new-instance v0, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    const-string v1, "ONESHOT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->ONESHOT:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    .line 186
    new-instance v0, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    const-string v1, "BUDGET_RESET"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->BUDGET_RESET:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    .line 187
    new-instance v0, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    const-string v1, "CALCULATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->CALCULATE:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    .line 183
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    sget-object v1, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->INIT_OBSERVE:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->ONESHOT:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->BUDGET_RESET:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->CALCULATE:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->$VALUES:[Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 183
    const-class v0, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;
    .locals 1

    .line 183
    sget-object v0, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->$VALUES:[Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    return-object v0
.end method
