.class public final Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfDocument$PageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "pageWidth"    # I
    .param p2, "pageHeight"    # I
    .param p3, "pageNumber"    # I

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Landroid/graphics/pdf/PdfDocument$PageInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;-><init>(Landroid/graphics/pdf/PdfDocument$1;)V

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    .line 332
    if-lez p1, :cond_2

    .line 335
    if-lez p2, :cond_1

    .line 338
    if-ltz p3, :cond_0

    .line 341
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v0, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$002(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I

    .line 342
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v0, p2}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$102(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I

    .line 343
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v0, p3}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$602(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I

    .line 344
    return-void

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pageNumber must be non negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "page width must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "page width must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public create()Landroid/graphics/pdf/PdfDocument$PageInfo;
    .locals 5

    .line 370
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v0}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$200(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    .line 372
    invoke-static {v2}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$000(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v2

    iget-object v3, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v3}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$100(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 371
    invoke-static {v0, v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$202(Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 374
    :cond_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    return-object v0
.end method

.method public setContentRect(Landroid/graphics/Rect;)Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;
    .locals 2
    .param p1, "contentRect"    # Landroid/graphics/Rect;

    .line 354
    if-eqz p1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    .line 356
    invoke-static {v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$000(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    .line 357
    invoke-static {v1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$100(Landroid/graphics/pdf/PdfDocument$PageInfo;)I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentRect does not fit the page"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    invoke-static {v0, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo;->access$202(Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 361
    return-object p0
.end method
