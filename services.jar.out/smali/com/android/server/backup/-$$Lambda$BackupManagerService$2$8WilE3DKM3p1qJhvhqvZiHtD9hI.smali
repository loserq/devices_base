.class public final synthetic Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$8WilE3DKM3p1qJhvhqvZiHtD9hI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/backup/BackupManagerService$2;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService$2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$8WilE3DKM3p1qJhvhqvZiHtD9hI;->f$0:Lcom/android/server/backup/BackupManagerService$2;

    iput-object p2, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$8WilE3DKM3p1qJhvhqvZiHtD9hI;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$8WilE3DKM3p1qJhvhqvZiHtD9hI;->f$0:Lcom/android/server/backup/BackupManagerService$2;

    iget-object v1, p0, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$8WilE3DKM3p1qJhvhqvZiHtD9hI;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService$2;->lambda$onReceive$1(Lcom/android/server/backup/BackupManagerService$2;Ljava/lang/String;)V

    return-void
.end method
