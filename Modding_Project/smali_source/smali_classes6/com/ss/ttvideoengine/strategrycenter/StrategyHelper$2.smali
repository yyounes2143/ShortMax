.class Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$2;
.super Ljava/lang/Object;
.source "StrategyHelper.java"

# interfaces
.implements Lcom/ss/ttvideoengine/portrait/PortraitChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->internalStart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$2;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPortraitChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper$2;->this$0:Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/16 p2, 0x79ee

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, p2, v0}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->businessEvent(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
