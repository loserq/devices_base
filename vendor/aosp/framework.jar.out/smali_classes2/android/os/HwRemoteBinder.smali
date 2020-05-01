.class public Landroid/os/HwRemoteBinder;
.super Ljava/lang/Object;
.source "HwRemoteBinder.java"

# interfaces
.implements Landroid/os/IHwBinder;


# static fields
.field private static final TAG:Ljava/lang/String; = "HwRemoteBinder"

.field private static final sNativeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 53
    invoke-static {}, Landroid/os/HwRemoteBinder;->native_init()J

    move-result-wide v6

    .line 55
    .local v6, "freeFunction":J
    new-instance v8, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/os/HwRemoteBinder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-wide/16 v4, 0x80

    move-object v0, v8

    move-wide v2, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v8, Landroid/os/HwRemoteBinder;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 59
    .end local v6    # "freeFunction":J
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0}, Landroid/os/HwRemoteBinder;->native_setup_empty()V

    .line 30
    sget-object v0, Landroid/os/HwRemoteBinder;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/HwRemoteBinder;->mNativeContext:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 33
    return-void
.end method

.method private static final native native_init()J
.end method

.method private final native native_setup_empty()V
.end method

.method private static final sendDeathNotice(Landroid/os/IHwBinder$DeathRecipient;J)V
    .locals 0
    .param p0, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p1, "cookie"    # J

    .line 62
    invoke-interface {p0, p1, p2}, Landroid/os/IHwBinder$DeathRecipient;->serviceDied(J)V

    .line 63
    return-void
.end method


# virtual methods
.method public final native equals(Ljava/lang/Object;)Z
.end method

.method public final native hashCode()I
.end method

.method public native linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public final native transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public native unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
.end method
