.class Lcom/android/internal/telephony/cat/BIPClientParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mHasAlphaId:Z

.field mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Z)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "textMsg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p3, "has_alpha_id"    # Z

    .line 222
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 223
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BIPClientParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 224
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/BIPClientParams;->mHasAlphaId:Z

    .line 225
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .line 229
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BIPClientParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BIPClientParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 231
    const/4 v0, 0x1

    return v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
