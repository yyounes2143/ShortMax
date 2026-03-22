.class Lcom/bytedance/vcloud/strategy/StrategyCenter$1;
.super Ljava/lang/Object;
.source "StrategyCenter.java"

# interfaces
.implements Lcom/bytedance/vcloud/strategy/ISmartServiceSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/strategy/StrategyCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vcloud/strategy/StrategyCenter;


# direct methods
.method constructor <init>(Lcom/bytedance/vcloud/strategy/StrategyCenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vcloud/strategy/StrategyCenter$1;->this$0:Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public executeSmartService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/bytedance/vcloud/strategy/StrategyCenter$1;->this$0:Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->access$000(Lcom/bytedance/vcloud/strategy/StrategyCenter;)Lcom/bytedance/vcloud/strategy/SmartServiceWrapper;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2, p1}, Lcom/bytedance/vcloud/strategy/SmartServiceWrapper;->predictSmartSlice(Lorg/json/JSONObject;)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object p1

    .line 21
    :catch_0
    const-string p1, ""

    .line 22
    .line 23
    return-object p1
.end method

.method public getLastResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/vcloud/strategy/StrategyCenter$1;->this$0:Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->access$000(Lcom/bytedance/vcloud/strategy/StrategyCenter;)Lcom/bytedance/vcloud/strategy/SmartServiceWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/vcloud/strategy/SmartServiceWrapper;->getLastResult()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
