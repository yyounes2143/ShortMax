.class Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor$1;
.super Ljava/util/TimerTask;
.source "AwemeSpeedPredictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->startCalculate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;


# direct methods
.method constructor <init>(Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor$1;->this$0:Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor$1;->this$0:Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;->access$000(Lcom/bytedance/vcloud/networkpredictor/AwemeSpeedPredictor;)Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictorAwemePredictor;->calculateSpeed()D

    .line 8
    .line 9
    .line 10
    return-void
.end method
