.class abstract Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/widget/CalendarView$CalendarViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractCalendarViewDelegate"
.end annotation


# static fields
.field protected static final DEFAULT_MAX_DATE:Ljava/lang/String; = "01/01/2100"

.field protected static final DEFAULT_MIN_DATE:Ljava/lang/String; = "01/01/1900"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Landroid/widget/CalendarView;


# direct methods
.method constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;)V
    .locals 1
    .param p1, "delegator"    # Landroid/widget/CalendarView;
    .param p2, "context"    # Landroid/content/Context;

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    iput-object p1, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    .line 647
    iput-object p2, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mContext:Landroid/content/Context;

    .line 650
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 651
    return-void
.end method


# virtual methods
.method public getFocusedMonthDateColor()I
    .locals 1

    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 741
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .locals 1

    .line 679
    const/4 v0, 0x0

    return v0
.end method

.method public getShowWeekNumber()Z
    .locals 1

    .line 752
    const/4 v0, 0x0

    return v0
.end method

.method public getShownWeekCount()I
    .locals 1

    .line 668
    const/4 v0, 0x0

    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .locals 1

    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public getWeekNumberColor()I
    .locals 1

    .line 713
    const/4 v0, 0x0

    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .locals 1

    .line 725
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 759
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .line 654
    iget-object v0, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    return-void

    .line 657
    :cond_0
    iput-object p1, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 658
    return-void
.end method

.method public setFocusedMonthDateColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 685
    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 731
    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 736
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 674
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 0
    .param p1, "showWeekNumber"    # Z

    .line 747
    return-void
.end method

.method public setShownWeekCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 663
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 696
    return-void
.end method

.method public setWeekNumberColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 707
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 719
    return-void
.end method
