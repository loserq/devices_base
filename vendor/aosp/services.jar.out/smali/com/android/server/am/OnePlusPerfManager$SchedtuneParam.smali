.class public Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
.super Ljava/lang/Object;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SchedtuneParam"
.end annotation


# instance fields
.field private mItemSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->mItemSet:Ljava/util/HashSet;

    .line 586
    return-void
.end method

.method private writeSchedtuneValue(ZLjava/lang/String;)Z
    .locals 11
    .param p1, "acquire"    # Z
    .param p2, "level"    # Ljava/lang/String;

    .line 606
    const/4 v0, 0x0

    .line 607
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 608
    .local v1, "f":Ljava/io/File;
    const/4 v2, 0x1

    .line 610
    .local v2, "ret":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->mItemSet:Ljava/util/HashSet;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 611
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->mItemSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;

    .line 612
    .local v5, "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    .line 613
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 614
    const-string v4, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : file not exits :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v4, 0x0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 629
    if-eqz v0, :cond_0

    .line 630
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 631
    const/4 v0, 0x0

    goto :goto_1

    .line 633
    :catch_0
    move-exception v3

    .line 634
    .local v3, "ex":Ljava/io/IOException;
    const-string v6, "OPPerf"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO close failed : level = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",ex->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v2, 0x0

    .line 635
    .end local v3    # "ex":Ljava/io/IOException;
    goto :goto_2

    .line 636
    :cond_0
    :goto_1
    nop

    .line 615
    :goto_2
    return v4

    .line 617
    :cond_1
    :try_start_3
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 618
    if-eqz p1, :cond_2

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->getParam()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;->getDefaultParam()Ljava/lang/String;

    move-result-object v6

    .line 619
    .local v6, "cmd":Ljava/lang/String;
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 620
    .local v7, "statebuffer":[B
    invoke-virtual {v0, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 621
    sget-boolean v8, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "OPPerf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "writeSchedtuneValue : level ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .end local v5    # "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    .end local v6    # "cmd":Ljava/lang/String;
    .end local v7    # "statebuffer":[B
    :cond_3
    goto/16 :goto_0

    .line 623
    :cond_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 629
    if-eqz v0, :cond_5

    .line 630
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 631
    :goto_4
    const/4 v0, 0x0

    goto :goto_6

    .line 633
    :catch_1
    move-exception v3

    .line 634
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    const-string v6, "IO close failed : level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ex->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v2, 0x0

    .line 637
    .end local v3    # "ex":Ljava/io/IOException;
    goto :goto_7

    .line 636
    :cond_5
    :goto_6
    goto :goto_7

    .line 623
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 628
    :catchall_1
    move-exception v3

    goto :goto_8

    .line 624
    :catch_2
    move-exception v3

    .line 625
    .restart local v3    # "ex":Ljava/io/IOException;
    :try_start_7
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeSchedtuneValue failed : level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ex->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 626
    const/4 v2, 0x0

    .line 629
    .end local v3    # "ex":Ljava/io/IOException;
    if-eqz v0, :cond_5

    .line 630
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    .line 633
    :catch_3
    move-exception v3

    .line 634
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 638
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_7
    return v2

    .line 628
    :goto_8
    nop

    .line 629
    if-eqz v0, :cond_6

    .line 630
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 631
    const/4 v0, 0x0

    goto :goto_9

    .line 633
    :catch_4
    move-exception v4

    .line 634
    .local v4, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO close failed : level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ex->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OPPerf"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v2, 0x0

    .line 635
    .end local v4    # "ex":Ljava/io/IOException;
    nop

    .line 636
    :cond_6
    :goto_9
    throw v3
.end method


# virtual methods
.method public addSchedtuneParamItem(Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;

    .line 588
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->mItemSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->mItemSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 590
    monitor-exit v0

    .line 591
    return-void

    .line 590
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetPerfFiles(Ljava/lang/String;)Z
    .locals 1
    .param p1, "level"    # Ljava/lang/String;

    .line 602
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->writeSchedtuneValue(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writePerfFiles(Ljava/lang/String;)Z
    .locals 2
    .param p1, "level"    # Ljava/lang/String;

    .line 594
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->writeSchedtuneValue(ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 595
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->writeSchedtuneValue(ZLjava/lang/String;)Z

    .line 596
    return v0

    .line 598
    :cond_0
    return v0
.end method
