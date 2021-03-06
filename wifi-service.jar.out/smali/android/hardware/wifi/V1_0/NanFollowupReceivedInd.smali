.class public final Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;
.super Ljava/lang/Object;
.source "NanFollowupReceivedInd.java"


# instance fields
.field public final addr:[B

.field public discoverySessionId:B

.field public final extendedServiceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public peerId:I

.field public receivedInFaw:Z

.field public final serviceSpecificInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->addr:[B

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 114
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 115
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 116
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 115
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 119
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 121
    new-instance v5, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;

    invoke-direct {v5}, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;-><init>()V

    .line 122
    .local v5, "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;
    mul-int/lit8 v6, v4, 0x30

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 123
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v5    # "_hidl_vec_element":Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 178
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 179
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 180
    const/4 v2, 0x0

    const-wide/16 v3, 0xc

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 181
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v1, 0x30

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 182
    .local v3, "childBlob":Landroid/os/HwBlob;
    nop

    .local v2, "_hidl_index_0":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 183
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;

    mul-int/lit8 v5, v2, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v2    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 188
    .end local v1    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 189
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 42
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 43
    return v0

    .line 45
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 46
    return v1

    .line 48
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;

    if-eq v2, v3, :cond_2

    .line 49
    return v1

    .line 51
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;

    .line 52
    .local v2, "other":Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;
    iget-byte v3, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->discoverySessionId:B

    iget-byte v4, v2, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->discoverySessionId:B

    if-eq v3, v4, :cond_3

    .line 53
    return v1

    .line 55
    :cond_3
    iget v3, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->peerId:I

    iget v4, v2, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->peerId:I

    if-eq v3, v4, :cond_4

    .line 56
    return v1

    .line 58
    :cond_4
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->addr:[B

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->addr:[B

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 59
    return v1

    .line 61
    :cond_5
    iget-boolean v3, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->receivedInFaw:Z

    iget-boolean v4, v2, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->receivedInFaw:Z

    if-eq v3, v4, :cond_6

    .line 62
    return v1

    .line 64
    :cond_6
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 65
    return v1

    .line 67
    :cond_7
    iget-object v3, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 68
    return v1

    .line 70
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->discoverySessionId:B

    .line 76
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->peerId:I

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->addr:[B

    .line 78
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->receivedInFaw:Z

    .line 79
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    .line 80
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    .line 81
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 75
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 18
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 132
    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    iput-byte v4, v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->discoverySessionId:B

    .line 133
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->peerId:I

    .line 135
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    .line 136
    .local v6, "_hidl_array_offset_0":J
    iget-object v8, v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->addr:[B

    const/4 v9, 0x6

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 137
    nop

    .line 139
    .end local v6    # "_hidl_array_offset_0":J
    const-wide/16 v6, 0xe

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->receivedInFaw:Z

    .line 141
    const-wide/16 v6, 0x10

    add-long v8, p3, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 142
    .local v8, "_hidl_vec_size":I
    mul-int/lit8 v9, v8, 0x1

    int-to-long v11, v9

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v6, p3, v6

    add-long v15, v6, v2

    .line 142
    const/16 v17, 0x1

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 146
    .local v6, "childBlob":Landroid/os/HwBlob;
    iget-object v7, v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 147
    const/4 v7, 0x0

    move v9, v7

    .local v9, "_hidl_index_0":I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 149
    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 150
    .local v10, "_hidl_vec_element":B
    iget-object v11, v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v10    # "_hidl_vec_element":B
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 154
    .end local v6    # "childBlob":Landroid/os/HwBlob;
    .end local v8    # "_hidl_vec_size":I
    .end local v9    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v8, 0x20

    add-long v10, p3, v8

    add-long/2addr v10, v4

    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 155
    .local v4, "_hidl_vec_size":I
    mul-int/lit8 v5, v4, 0x1

    int-to-long v11, v5

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v5, p3, v8

    add-long v15, v5, v2

    const/16 v17, 0x1

    .line 155
    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 159
    .local v2, "childBlob":Landroid/os/HwBlob;
    iget-object v3, v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 160
    nop

    .local v7, "_hidl_index_0":I
    :goto_1
    move v3, v7

    .end local v7    # "_hidl_index_0":I
    .local v3, "_hidl_index_0":I
    if-ge v3, v4, :cond_1

    .line 162
    mul-int/lit8 v5, v3, 0x1

    int-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v5

    .line 163
    .local v5, "_hidl_vec_element":B
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v5    # "_hidl_vec_element":B
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "_hidl_index_0":I
    .restart local v7    # "_hidl_index_0":I
    goto :goto_1

    .line 166
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_vec_size":I
    .end local v7    # "_hidl_index_0":I
    :cond_1
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 105
    const-wide/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 106
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 107
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ".discoverySessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-byte v1, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->discoverySessionId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, ", .peerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v1, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->peerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ", .addr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->addr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ", .receivedInFaw = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-boolean v1, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->receivedInFaw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", .serviceSpecificInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", .extendedServiceSpecificInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v1, p0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 15
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    move-object v0, p0

    move-object/from16 v1, p1

    .line 193
    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget-byte v6, v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->discoverySessionId:B

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 194
    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    iget v6, v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->peerId:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 196
    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    .line 197
    .local v6, "_hidl_array_offset_0":J
    iget-object v8, v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->addr:[B

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 198
    nop

    .line 200
    .end local v6    # "_hidl_array_offset_0":J
    const-wide/16 v6, 0xe

    add-long v6, p2, v6

    iget-boolean v8, v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->receivedInFaw:Z

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 202
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 203
    .local v6, "_hidl_vec_size":I
    const-wide/16 v7, 0x10

    add-long v9, p2, v7

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 204
    add-long v9, p2, v7

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    const/4 v13, 0x0

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 205
    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x1

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 206
    .local v9, "childBlob":Landroid/os/HwBlob;
    move v10, v13

    .local v10, "_hidl_index_0":I
    :goto_0
    if-ge v10, v6, :cond_0

    .line 207
    mul-int/lit8 v13, v10, 0x1

    int-to-long v11, v13

    iget-object v13, v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->serviceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v9, v11, v12, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 206
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v11, 0xc

    const/4 v13, 0x0

    goto :goto_0

    .line 209
    .end local v10    # "_hidl_index_0":I
    :cond_0
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 212
    .end local v6    # "_hidl_vec_size":I
    .end local v9    # "childBlob":Landroid/os/HwBlob;
    iget-object v6, v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 213
    .restart local v6    # "_hidl_vec_size":I
    const-wide/16 v7, 0x20

    add-long v9, p2, v7

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 214
    add-long v4, p2, v7

    const-wide/16 v9, 0xc

    add-long/2addr v4, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v4, v5, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 215
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v6, 0x1

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 216
    .local v4, "childBlob":Landroid/os/HwBlob;
    nop

    .local v9, "_hidl_index_0":I
    :goto_1
    move v5, v9

    .end local v9    # "_hidl_index_0":I
    .local v5, "_hidl_index_0":I
    if-ge v5, v6, :cond_1

    .line 217
    mul-int/lit8 v9, v5, 0x1

    int-to-long v9, v9

    iget-object v11, v0, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->extendedServiceSpecificInfo:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    invoke-virtual {v4, v9, v10, v11}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 216
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "_hidl_index_0":I
    .restart local v9    # "_hidl_index_0":I
    goto :goto_1

    .line 219
    .end local v9    # "_hidl_index_0":I
    :cond_1
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 221
    .end local v4    # "childBlob":Landroid/os/HwBlob;
    .end local v6    # "_hidl_vec_size":I
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 169
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 170
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/wifi/V1_0/NanFollowupReceivedInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 172
    return-void
.end method
