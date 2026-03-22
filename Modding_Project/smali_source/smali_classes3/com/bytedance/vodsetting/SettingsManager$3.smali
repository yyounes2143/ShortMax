.class Lcom/bytedance/vodsetting/SettingsManager$3;
.super Ljava/util/TimerTask;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vodsetting/SettingsManager;->_startScheduleEvent(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vodsetting/SettingsManager;


# direct methods
.method constructor <init>(Lcom/bytedance/vodsetting/SettingsManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vodsetting/SettingsManager$3;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager$3;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    .line 2
    .line 3
    const-string v1, "all"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/bytedance/vodsetting/SettingsManager;->refresh(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
