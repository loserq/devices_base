.class public final Landroid/content/pm/PackageParser$ServiceIntentInfo;
.super Landroid/content/pm/PackageParser$IntentInfo;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceIntentInfo"
.end annotation


# instance fields
.field public service:Landroid/content/pm/PackageParser$Service;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Service;)V
    .locals 0
    .param p1, "_service"    # Landroid/content/pm/PackageParser$Service;

    .line 8131
    invoke-direct {p0}, Landroid/content/pm/PackageParser$IntentInfo;-><init>()V

    .line 8132
    iput-object p1, p0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    .line 8133
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 8146
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser$IntentInfo;-><init>(Landroid/os/Parcel;)V

    .line 8147
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 8136
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8137
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ServiceIntentInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8138
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8139
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8140
    iget-object v1, p0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageParser$Service;->appendComponentShortName(Ljava/lang/StringBuilder;)V

    .line 8141
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
