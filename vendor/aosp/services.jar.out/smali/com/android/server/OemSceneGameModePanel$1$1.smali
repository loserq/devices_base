.class Lcom/android/server/OemSceneGameModePanel$1$1;
.super Ljava/lang/Object;
.source "OemSceneGameModePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModePanel$1;->onUserSwitchComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/OemSceneGameModePanel$1;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModePanel$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/OemSceneGameModePanel$1;

    .line 115
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel$1$1;->this$1:Lcom/android/server/OemSceneGameModePanel$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$1$1;->this$1:Lcom/android/server/OemSceneGameModePanel$1;

    iget-object v0, v0, Lcom/android/server/OemSceneGameModePanel$1;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->hide()V

    .line 120
    return-void
.end method
