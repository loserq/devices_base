.class public final synthetic Landroid/mtp/-$$Lambda$MtpPropertyList$ELHKvd8JMVRD8rbALqYPKbDX2mM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Landroid/mtp/-$$Lambda$MtpPropertyList$ELHKvd8JMVRD8rbALqYPKbDX2mM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/mtp/-$$Lambda$MtpPropertyList$ELHKvd8JMVRD8rbALqYPKbDX2mM;

    invoke-direct {v0}, Landroid/mtp/-$$Lambda$MtpPropertyList$ELHKvd8JMVRD8rbALqYPKbDX2mM;-><init>()V

    sput-object v0, Landroid/mtp/-$$Lambda$MtpPropertyList$ELHKvd8JMVRD8rbALqYPKbDX2mM;->INSTANCE:Landroid/mtp/-$$Lambda$MtpPropertyList$ELHKvd8JMVRD8rbALqYPKbDX2mM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Landroid/mtp/MtpPropertyList;->lambda$ELHKvd8JMVRD8rbALqYPKbDX2mM(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method
