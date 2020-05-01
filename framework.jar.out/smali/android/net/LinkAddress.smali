.class public Landroid/net/LinkAddress;
.super Ljava/lang/Object;
.source "LinkAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/net/InetAddress;

.field private flags:I

.field private prefixLength:I

.field private scope:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 336
    new-instance v0, Landroid/net/LinkAddress$1;

    invoke-direct {v0}, Landroid/net/LinkAddress$1;-><init>()V

    sput-object v0, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V

    .line 190
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-static {v0}, Landroid/net/LinkAddress;->scopeForUnicastAddress(Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Landroid/net/LinkAddress;->scope:I

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "scope"    # I

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-static {p1}, Landroid/net/NetworkUtils;->parseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 205
    .local v0, "ipAndMask":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/net/InetAddress;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/net/InetAddress;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2, p2, p3}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;III)V

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;III)V

    .line 168
    invoke-static {p1}, Landroid/net/LinkAddress;->scopeForUnicastAddress(Ljava/net/InetAddress;)I

    move-result v0

    iput v0, p0, Landroid/net/LinkAddress;->scope:I

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;III)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I
    .param p3, "flags"    # I
    .param p4, "scope"    # I

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;III)V

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/net/InterfaceAddress;)V
    .locals 2
    .param p1, "interfaceAddress"    # Ljava/net/InterfaceAddress;

    .line 178
    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v1

    .line 178
    invoke-direct {p0, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 180
    return-void
.end method

.method private init(Ljava/net/InetAddress;III)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "prefixLength"    # I
    .param p3, "flags"    # I
    .param p4, "scope"    # I

    .line 131
    if-eqz p1, :cond_1

    .line 132
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_1

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-gt p2, v0, :cond_1

    :cond_0
    const/16 v0, 0x80

    if-gt p2, v0, :cond_1

    .line 139
    iput-object p1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    .line 140
    iput p2, p0, Landroid/net/LinkAddress;->prefixLength:I

    .line 141
    iput p3, p0, Landroid/net/LinkAddress;->flags:I

    .line 142
    iput p4, p0, Landroid/net/LinkAddress;->scope:I

    .line 143
    return-void

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad LinkAddress params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isIPv6ULA()Z
    .locals 4

    .line 104
    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIPv6()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 106
    .local v0, "bytes":[B
    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, -0x2

    const/4 v3, -0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 108
    .end local v0    # "bytes":[B
    :cond_1
    return v1
.end method

.method private static scopeForUnicastAddress(Ljava/net/InetAddress;)I
    .locals 1
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 80
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_HOST:I

    return v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_SITE:I

    return v0

    .line 94
    :cond_2
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_UNIVERSE:I

    return v0

    .line 85
    :cond_3
    :goto_0
    sget v0, Landroid/system/OsConstants;->RT_SCOPE_LINK:I

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 229
    instance-of v0, p1, Landroid/net/LinkAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 230
    return v1

    .line 232
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/LinkAddress;

    .line 233
    .local v0, "linkAddress":Landroid/net/LinkAddress;
    iget-object v2, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    iget-object v3, v0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/net/LinkAddress;->prefixLength:I

    iget v3, v0, Landroid/net/LinkAddress;->prefixLength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/LinkAddress;->flags:I

    iget v3, v0, Landroid/net/LinkAddress;->flags:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/LinkAddress;->scope:I

    iget v3, v0, Landroid/net/LinkAddress;->scope:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .line 266
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 289
    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    return v0
.end method

.method public getNetworkPrefixLength()I
    .locals 1

    .line 282
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    return v0
.end method

.method public getPrefixLength()I
    .locals 1

    .line 273
    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    return v0
.end method

.method public getScope()I
    .locals 1

    .line 296
    iget v0, p0, Landroid/net/LinkAddress;->scope:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 244
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    const/16 v2, 0xb

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    iget v1, p0, Landroid/net/LinkAddress;->flags:I

    const/16 v2, 0x13

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    iget v1, p0, Landroid/net/LinkAddress;->scope:I

    const/16 v2, 0x2b

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public isGlobalPreferred()Z
    .locals 4

    .line 310
    iget v0, p0, Landroid/net/LinkAddress;->scope:I

    sget v1, Landroid/system/OsConstants;->RT_SCOPE_UNIVERSE:I

    if-ne v0, v1, :cond_1

    .line 311
    invoke-direct {p0}, Landroid/net/LinkAddress;->isIPv6ULA()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    sget v1, Landroid/system/OsConstants;->IFA_F_DADFAILED:I

    sget v2, Landroid/system/OsConstants;->IFA_F_DEPRECATED:I

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    sget v1, Landroid/system/OsConstants;->IFA_F_TENTATIVE:I

    and-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    sget v1, Landroid/system/OsConstants;->IFA_F_OPTIMISTIC:I

    and-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0
.end method

.method public isIPv4()Z
    .locals 1

    .line 124
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet4Address;

    return v0
.end method

.method public isIPv6()Z
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    return v0
.end method

.method public isSameAddressAs(Landroid/net/LinkAddress;)Z
    .locals 2
    .param p1, "other"    # Landroid/net/LinkAddress;

    .line 259
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    iget-object v1, p1, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    iget v1, p1, Landroid/net/LinkAddress;->prefixLength:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 327
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 328
    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget v0, p0, Landroid/net/LinkAddress;->scope:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    return-void
.end method
