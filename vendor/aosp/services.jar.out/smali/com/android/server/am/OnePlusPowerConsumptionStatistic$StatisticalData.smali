.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatisticalData"
.end annotation


# instance fields
.field appTop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;",
            ">;"
        }
    .end annotation
.end field

.field chargeFragment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;",
            ">;"
        }
    .end annotation
.end field

.field dozeFragment:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;",
            ">;"
        }
    .end annotation
.end field

.field duration:J

.field firstReport:Z

.field kernelWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field kernelWakeLocksTop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field kernelWakeupReasons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field kernelWakeupReasonsTop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field os_version:Ljava/lang/String;

.field powerConsumptionList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;",
            ">;"
        }
    .end annotation
.end field

.field realEndTime:J

.field realStartTime:J

.field screenOffChargeDuration:J

.field screenOffDischarge:I

.field screenOffDischargeDuration:J

.field screenOnChargeDuration:J

.field screenOnDischarge:I

.field screenOnDischargeDuration:J

.field systemModule:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

.field totalChargeDuration:J

.field totalDischarge:I

.field totalDischargeDuration:J

.field totalScreenOffDuration:J

.field totalScreenOnDuration:J


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 328
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->os_version:Ljava/lang/String;

    .line 331
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    .line 332
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realEndTime:J

    .line 333
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->duration:J

    .line 334
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->firstReport:Z

    .line 337
    iput v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischarge:I

    .line 339
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischargeDuration:J

    .line 341
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalChargeDuration:J

    .line 344
    iput v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischarge:I

    .line 346
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOnDuration:J

    .line 348
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischargeDuration:J

    .line 350
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnChargeDuration:J

    .line 353
    iput v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischarge:I

    .line 355
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOffDuration:J

    .line 357
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischargeDuration:J

    .line 359
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffChargeDuration:J

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    .line 364
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    .line 365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    .line 368
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->systemModule:Landroid/util/SparseArray;

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->appTop:Ljava/util/ArrayList;

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocksTop:Ljava/util/ArrayList;

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasonsTop:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 10
    .param p1, "from"    # Ljava/lang/String;

    .line 374
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v0, "OPCS"

    const-string v1, "# dump # StatisticalData # Begin"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # os_version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->os_version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # realStartTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # realEndTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->realEndTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->duration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # firstReport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->firstReport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # totalDischarge:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischarge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # totalDischargeDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalDischargeDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # totalChargeDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalChargeDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # screenOnDischarge:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischarge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # totalScreenOnDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOnDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # screenOnDischargeDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnDischargeDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # screenOnChargeDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOnChargeDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # screenOffDischarge:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischarge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # totalScreenOffDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->totalScreenOffDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # screenOffDischargeDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffDischargeDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # screenOffChargeDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->screenOffChargeDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # StatisticalData # dozeFragment # size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    .line 410
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, "df":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "df":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 413
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->dozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    .line 414
    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# dump # StatisticalData # dozeFragment # i:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " |"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 414
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    .end local v0    # "i":I
    :cond_0
    const-string v0, "OPCS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # StatisticalData # chargeFragment # size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    .line 419
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 418
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "cf":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    move-object v3, v0

    move v0, v1

    .local v0, "i":I
    .local v3, "cf":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 422
    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->chargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    .line 423
    const-string v4, "OPCS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # StatisticalData # chargeFragment # i:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " |"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 423
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    .end local v0    # "i":I
    :cond_1
    const-string v0, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# dump # StatisticalData # powerConsumptionList # size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    .line 429
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 427
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, "pc":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
    nop

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 432
    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->powerConsumptionList:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    .line 433
    if-eqz v0, :cond_2

    .line 434
    const-string v4, "OPCS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # StatisticalData # powerConsumptionList # i:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " |pc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 434
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 440
    .end local v1    # "i":I
    :cond_3
    const-string v1, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# dump # StatisticalData # kernelWakeLocks # size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    .line 441
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 440
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, "te":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    const/4 v4, 0x0

    .line 444
    .local v4, "n":I
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 445
    .local v6, "s":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 446
    if-eqz v1, :cond_4

    .line 447
    const-string v7, "OPCS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "# dump # StatisticalData # kernelWakeLocks # i:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " |wakeLock:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 447
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 452
    .end local v6    # "s":Ljava/lang/String;
    goto :goto_3

    .line 454
    :cond_5
    const-string v5, "OPCS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# dump # StatisticalData # kernelWakeupReasons # size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    .line 456
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 454
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v1, 0x0

    .line 458
    const/4 v4, 0x0

    .line 459
    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 460
    .restart local v6    # "s":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;->kernelWakeupReasons:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 461
    if-eqz v1, :cond_6

    .line 462
    const-string v7, "OPCS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "# dump # StatisticalData # kernelWakeupReasons # i:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " |wakeupReason:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 462
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 467
    .end local v6    # "s":Ljava/lang/String;
    goto :goto_4

    .line 469
    :cond_7
    const-string v5, "OPCS"

    const-string v6, "# dump # StatisticalData # End"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void
.end method
