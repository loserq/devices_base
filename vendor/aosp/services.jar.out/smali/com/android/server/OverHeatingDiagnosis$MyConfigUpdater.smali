.class Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;
.super Ljava/lang/Object;
.source "OverHeatingDiagnosis.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method private constructor <init>(Lcom/android/server/OverHeatingDiagnosis;)V
    .locals 0

    .line 1009
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p2, "x1"    # Lcom/android/server/OverHeatingDiagnosis$1;

    .line 1009
    invoke-direct {p0, p1}, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;-><init>(Lcom/android/server/OverHeatingDiagnosis;)V

    return-void
.end method


# virtual methods
.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "config"    # Lorg/json/JSONArray;

    .line 1017
    if-nez p1, :cond_0

    .line 1018
    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "[OnlineConfig] config is null!"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    return-void

    .line 1038
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 1039
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1051
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v1, "switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1052
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "switch"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$1402(Lcom/android/server/OverHeatingDiagnosis;Z)Z

    .line 1053
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$1400(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_1
    const-string v1, "bugreport"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1057
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v2, "bugreport"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$1702(Lcom/android/server/OverHeatingDiagnosis;Z)Z

    .line 1058
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mEnabledBugreport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$1700(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_2
    const-string v1, "bugreport_beta"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1062
    sget-boolean v1, Lcom/android/server/OnePlusPowerController;->BETA_OR_ALPHA_ROM:Z

    if-eqz v1, :cond_3

    .line 1063
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v2, "bugreport_beta"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$1702(Lcom/android/server/OverHeatingDiagnosis;Z)Z

    .line 1064
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mEnabledBugreport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$1700(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_3
    const-string/jumbo v1, "mdm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1069
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "mdm"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$1802(Lcom/android/server/OverHeatingDiagnosis;Z)Z

    .line 1070
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mEnabledMDM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$1800(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_4
    const-string/jumbo v1, "thermal_path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1074
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "thermal_path"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$1902(Lcom/android/server/OverHeatingDiagnosis;Ljava/lang/String;)Ljava/lang/String;

    .line 1075
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mThermalZonePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$1900(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_5
    const-string/jumbo v1, "thermal_precision"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1079
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "thermal_precision"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$2002(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 1080
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mThermalZonePrecision: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2000(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_6
    const-string/jumbo v1, "monitor_forced"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1084
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "monitor_forced"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$2102(Lcom/android/server/OverHeatingDiagnosis;Z)Z

    .line 1085
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMonitorForced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2100(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_7
    const-string/jumbo v1, "monitor_num"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1089
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "monitor_num"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$2202(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 1090
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMonitorNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2200(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_8
    const-string/jumbo v1, "trigger_period"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1094
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "trigger_period"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2302(Lcom/android/server/OverHeatingDiagnosis;J)J

    .line 1095
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mTriggerPeriod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2300(Lcom/android/server/OverHeatingDiagnosis;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_9
    const-string/jumbo v1, "monitor_period"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1099
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "monitor_period"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2402(Lcom/android/server/OverHeatingDiagnosis;J)J

    .line 1100
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMonitorPeriod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2400(Lcom/android/server/OverHeatingDiagnosis;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_a
    const-string/jumbo v1, "monitor_frequency"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1104
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "monitor_frequency"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2502(Lcom/android/server/OverHeatingDiagnosis;J)J

    .line 1105
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMonitorFrequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2500(Lcom/android/server/OverHeatingDiagnosis;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_b
    const-string/jumbo v1, "monitor_temp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1109
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string/jumbo v2, "monitor_temp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$2602(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 1110
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mMonitorTemp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2600(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_c
    const-string v1, "critical_cpu"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1114
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v2, "critical_cpu"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$2702(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 1115
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalCpu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2700(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_d
    const-string v1, "critical_total_cpu"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1119
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v2, "critical_total_cpu"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$2802(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 1120
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalTotalCpu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2800(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_e
    const-string v1, "critical_temp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1124
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v2, "critical_temp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$2902(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 1125
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalTemp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$2900(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_f
    const-string v1, "critical_charging_temp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1129
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v2, "critical_charging_temp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$3002(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 1130
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalChargingTemp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$3000(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_10
    const-string v1, "critical_foreground"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1134
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v2, "critical_foreground"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$3102(Lcom/android/server/OverHeatingDiagnosis;J)J

    .line 1135
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalForeground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$3100(Lcom/android/server/OverHeatingDiagnosis;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_11
    const-string v1, "critical_charging"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1139
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    const-string v2, "critical_charging"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$3202(Lcom/android/server/OverHeatingDiagnosis;J)J

    .line 1140
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mCriticalCharging: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$3200(Lcom/android/server/OverHeatingDiagnosis;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    .end local v0    # "json":Lorg/json/JSONObject;
    :cond_12
    goto :goto_0

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "config"    # Lorg/json/JSONArray;

    .line 1013
    invoke-virtual {p0, p1}, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 1014
    return-void
.end method
