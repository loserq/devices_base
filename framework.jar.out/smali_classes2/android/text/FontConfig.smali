.class public final Landroid/text/FontConfig;
.super Ljava/lang/Object;
.source "FontConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/FontConfig$Family;,
        Landroid/text/FontConfig$Alias;,
        Landroid/text/FontConfig$Font;
    }
.end annotation


# instance fields
.field private final mAliases:[Landroid/text/FontConfig$Alias;

.field private final mFamilies:[Landroid/text/FontConfig$Family;


# direct methods
.method public constructor <init>([Landroid/text/FontConfig$Family;[Landroid/text/FontConfig$Alias;)V
    .locals 0
    .param p1, "families"    # [Landroid/text/FontConfig$Family;
    .param p2, "aliases"    # [Landroid/text/FontConfig$Alias;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/text/FontConfig;->mFamilies:[Landroid/text/FontConfig$Family;

    .line 40
    iput-object p2, p0, Landroid/text/FontConfig;->mAliases:[Landroid/text/FontConfig$Alias;

    .line 41
    return-void
.end method


# virtual methods
.method public getAliases()[Landroid/text/FontConfig$Alias;
    .locals 1

    .line 54
    iget-object v0, p0, Landroid/text/FontConfig;->mAliases:[Landroid/text/FontConfig$Alias;

    return-object v0
.end method

.method public getFamilies()[Landroid/text/FontConfig$Family;
    .locals 1

    .line 47
    iget-object v0, p0, Landroid/text/FontConfig;->mFamilies:[Landroid/text/FontConfig$Family;

    return-object v0
.end method
